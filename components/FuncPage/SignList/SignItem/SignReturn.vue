<template lang="jade">
   .SignReturn(v-if="sign.return")
      APITable(:title="title", :apis="apis" hide-default)
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
         title: -> @$store.state.doc?.terms?.return ? 'return'
         apis: -> [@sign.return]
</script>



<style lang="less">
   .FuncPage {
      .SignReturn {
         .APIName {
            font-weight: 300;
         }
      }
   }
</style>