<template lang="jade">
   .ParamItem
      Row
         Column
            ParamName(:param="param")
            ParamType(:param="param")
         ParamDesc(:param="param")
      ChildrenTable(:param="param")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':           require('~/components/Row').default
         'Column':        require('~/components/Column').default
         'ParamName':     require('./ParamName').default
         'ParamType':     require('./ParamType').default
         'ParamDesc':     require('./ParamDesc').default
         'ChildrenTable': require('./ChildrenTable').default

      props:
         'param':
            type: Object
            required: true
</script>



<style lang="less">

   @padding: 28px;

   .ParamTable {
      .ParamItem {
         > .Row {
            > .Column {
               flex: none;
               width: 45%;
               line-height: 22px;
               padding: @padding;

               > .ParamType {
                  margin-top: 4px;
               }
            }

            > .ParamDesc {
               flex: auto;
               padding: @padding;

               ul, ol {
                  margin-left: 0 !important;
               }
            }
         }
      }
   }
</style>