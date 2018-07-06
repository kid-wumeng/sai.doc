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
         > :not(h1, h2, h3, h4, h5, h6, pre) {
            margin-left: 12px;
            margin-right: 12px;
         }
      }
   }
</style>