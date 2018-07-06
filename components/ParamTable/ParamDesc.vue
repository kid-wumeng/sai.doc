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
         line-height: 22px;
         font-size: 14px;

         > * {
            margin-bottom: 6px;
         }

         li {
            margin-bottom: 10px;
            margin-left: 5px;
            > * {
               margin-left: -6px;
            }
         }
      }
   }
</style>