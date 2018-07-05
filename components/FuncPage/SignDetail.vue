<template lang="jade">
   TextArea.SignDetail(:text="sign.detail")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .SignDetail {
         line-height: 28px;
         font-size: 15px;

         > * {
            margin-bottom: 0;
         }
      }
   }
</style>