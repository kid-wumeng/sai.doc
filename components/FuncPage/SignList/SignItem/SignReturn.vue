<template lang="jade">
   .SignReturn(v-if="sign.return")
      APITable(title="return", :apis="apis" hide-default)
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
         apis: -> [@sign.return]
</script>



<style lang="less">
   .FuncPage {
      .SignReturn {
         .APIName {
            font-weight: 300;
            text-shadow: none;
            opacity: 0.8;
            -webkit-font-smoothing: subpixel-antialiased;
         }
      }
   }
</style>