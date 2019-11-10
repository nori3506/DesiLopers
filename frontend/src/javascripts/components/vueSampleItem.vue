<template>
  <div class="vuesampleItem" v-bind:class="{active: isActive}">
    <p v-on:click="toggleActive();">
      {{name}}
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
  methods: {
    toggleActive: function(){
      this.isActive = !this.isActive;
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