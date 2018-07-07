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
         font-size: 14px;

         > * {
            margin-bottom: 10px;
         }

         li {
            margin-bottom: 8px;
            margin-left: 5px;
            > * {
               margin-left: -6px;
            }
         }

         em {
            font-weight: 500;
         }
      }
   }
</style>