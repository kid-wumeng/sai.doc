<template lang="jade">
   TextArea.PackDesc(:text="pack.desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'pack':
            type: Object
            required: true
</script>



<style lang="less">
   .PackPage {
      .PackDesc {
         width: 600px;
         text-indent: 2em;
         font-size: 14px;
      }
   }
</style>