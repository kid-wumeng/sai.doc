<template lang="jade">
   TextArea.DetailArea(:text="sign.detail")
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



<style lang="less" scoped>
   .DetailArea {
      text-indent: 2em;
      > * {
         margin-bottom: 0;
      }
   }
</style>