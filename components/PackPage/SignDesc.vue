<template lang="jade">
   TextArea.SignDesc(:text="sign.desc")
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
   .PackPage {
      .SignDesc {
         padding: 8px 16px;
         font-size: 13px;
      }
   }
</style>