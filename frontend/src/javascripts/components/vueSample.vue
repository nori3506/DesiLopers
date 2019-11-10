<template>
  <div>
    <div>{{message}}</div>
    <div>
      <label>Name<input v-model="newname"></label>
      <button v-on:click="sendCreate();">Create</button>
    </div>
    <div>
      <!-- samplesに格納された配列を元に表示する -->
      <!-- idとnameを子コンポーネントに渡す -->
      <!-- keyはあったほうがいいと思われる -->
      <vue-sample-item v-for="sample in samples"
        v-bind:key="sample.id"
        v-bind:name="sample.name"
        v-bind:id="sample.id"
        v-on:sample-update="sendUpdate"
        v-on:sample-delete="sendDelete"
      >
      </vue-sample-item>
    </div>
  </div>
</template>
<script>
import axios from 'axios';
import vueSampleItem from './vueSampleItem';

// set CSRF token
axios.defaults.headers.common = {
  'X-Requested-With': 'XMLHttpRequest',
  'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
};

export default {
  name: 'vueSample',
  data: function(){
    return {
      //samplesがデータを入れる配列
      //この配列を編集すると自動的に表示に反映される
      samples: [],
      newname: '',
      //表示したいメッセージ
      message: 'hello sir'
    }
  },
  methods: {
    getAllSamples: function(){
      axios.get( this.getLocation() + 'all' )
      //成功したときのコールバック
      .then( function(response){
        this.samples = response.data;
        this.message = '取得に成功しました。'
      }.bind(this) )
      //失敗したときのコールバック
      .catch( () => this.message = '取得に失敗しました。');
    },
    sendCreate: function(){
      axios.post( this.getLocation(), {
        name: this.newname
      } )
      .then( function(response){
        //成功したらsamplesに項目を追加
        this.samples.push(response.data);
        this.message = '追加に成功しました。'
      }.bind(this))
      .catch( () => this.message = '追加に失敗しました。');
      //テキストフィールドを空にする
      this.newname = '';
    },
    getLocation: function(){
      let result = location.href;
      //最後に/がついていなかったら追加する
      if( !result.match(/\/$/) ){
        result += '/'
      }
      return result;
    },
    sendUpdate: function(_id, _name){
      axios.patch( this.getLocation() + _id, {
        id: _id,
        name: _name
      } )
      .then(function(response){
        this.message = '更新に成功しました。';
      }.bind(this))
      .catch( () => this.message = '更新に失敗しました。');
      // nameを書き換え
      // findメソッドで配列内を検索し、idが一致した要素の名前を変更する
      let target = this.samples.find( item => item.id == _id );
      target.name = _name;
    },
    sendDelete: function(_id){
      axios.delete( this.getLocation() + _id )
      .then(function(response){
        this.message = '削除に成功しました。';
      }.bind(this) )
      .catch( () => this.message = '削除に失敗しました。');

      //配列を更新
      //idが一致しない要素だけを抜き出して新しい配列を作る
      this.samples = this.samples.filter(item => item.id !== _id);
    },
  },
  //コンポーネントがマウントされると、getAllSamples()が呼ばれる
  mounted: function(){
    this.getAllSamples();
  },

  //子コンポーネントを指定する
  components: {
    'vue-sample-item': vueSampleItem
  }
}
</script>