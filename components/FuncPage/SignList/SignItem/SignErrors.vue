<template lang="jade">
   .SignErrors(v-if="sign.errors")
      APITable(:title="title", :apis="sign.errors" hide-type hide-default)
</template>



<script lang="coffee">
   module.exports =
      components:
         'APITable': require('~/components/APITable').default

      props:
         'sign':
            type: Object
            required: true

      computed:
         title: -> @$store.state.doc?.terms?.errors ? 'error'
</script>



<style lang="less">
   .FuncPage .SignErrors {
      .APIItem {
         line-height: 20px;
         .APIName {
            font-family: "Ubuntu";
            font-weight: 300;
            font-size: 12px;
            color: red;
            -webkit-font-smoothing: antialiased;
         }
         .APIDesc {
            font-size: 12px;
         }
      }
   }
</style>