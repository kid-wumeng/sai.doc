<template lang="jade">
   Markdown.SignDesc(:text="sign.desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Markdown': require('~/components/Markdown').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage {
      .SignDesc {
         padding: 16px 24px;
         font-size: 13px;
         color: #273340;
      }
   }
</style>