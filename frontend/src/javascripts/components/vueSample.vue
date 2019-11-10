<template>
  <div>
    <div>{{message}}</div>
    <div>
      <!-- samplesに格納された配列を元に表示する -->
      <!-- idとnameを子コンポーネントに渡す -->
      <!-- keyはあったほうがいいと思われる -->
      <vue-sample-item v-for="sample in samples"
        v-bind:key="sample.id"
        v-bind:name="sample.name"
        v-bind:id="sample.id"
      >
      </vue-sample-item>
    </div>
  </div>
</template>
<script>
import vueSampleItem from './vueSampleItem';

export default {
  name: 'vueSample',
  data: function(){
    return {
      //samplesがデータを入れる配列
      //この配列を編集すると自動的に表示に反映される
      samples: [
        {
          id: 1,
          name: 'sample111111'
        },
        {
          id: 2,
          name: 'sample2'
        },
        {
          id: 3,
          name: 'Sample3'
        }
     ],
      //表示したいメッセージ
      message: 'hello sir'
    }
  },
  //子コンポーネントを指定する
  components: {
    'vue-sample-item': vueSampleItem
  }
}
</script>