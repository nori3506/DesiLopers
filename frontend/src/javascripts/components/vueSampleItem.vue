<template>
  <div class="vuesampleItem" v-bind:class="{active: isActive}">
    <p v-on:click="toggleActive();">
      {{name}}
    </p>
    <p>
      <input v-model="myName">
    </p>
    <p>
      <button v-on:click="sendDelete();">delete</button>
    </p>
  </div>
</template>

<script>
export default {
  name: 'vueSampleItem',
  //親コンポーネントから受け取るプロパティ
  //型はできるだけ指定した方がよいとされる
  props: {
    id: Number,
    name: String
  },
  data: function(){
    return {
      isActive: false
    }
  },

  //computedを追加
  //myNameは算出パラメータとして設定
  computed: {
    myName: {
      //読み取りはnameを参照
      get: function(){
        return this.name
      },
      //書き込みはsample-updateイベントを自分自身に送信する。
      //sample-updateイベントが発生すると、
      //親コンポーネントのsendUpdateメソッドが発生するように設定する
      set: function(val){
        if (this.name !== val){
          this.$emit('sample-update', this.id, val);
        }
      }
    }
  },

  methods: {
    toggleActive: function(){
      this.isActive = !this.isActive;
    },
    sendDelete: function(){
      this.$emit('sample-delete', this.id);
    },
  }
}
</script>

<style lang="scss" scoped>
  .vuesampleItem {
    border: 1px dashed #abcdef;
    margin: 4px 0;

    &.active {
      border-left: 10px solid #abcdef;
    }

    &:hover {
      background-color: #fafafa;
    }

    p {
      margin: 0;
      padding: 4px;
    }
  }
</style>