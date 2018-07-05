<template lang="jade">
   TextArea.ParamDesc(:text="param.desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'param':
            type: Object
            required: true
</script>



<style lang="less">
   .ParamTable {
      .ParamDesc {
         > * {
            margin-bottom: 0;
         }
      }
   }
</style>