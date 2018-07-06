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
         text-align: left;
         word-break: keep-all;

         li {
            margin-left: 5px;
            > * {
               margin-left: -6px;
            }
         }
      }
   }
</style>