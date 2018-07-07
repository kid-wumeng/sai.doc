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

   @padding-x: 28px;
   @padding-y: 32px;

   .ParamTable {
      .ParamItem {
         > .Row {
            > .Column {
               flex: none;
               width: 50%;
               line-height: 22px;
               padding: @padding-y @padding-x;

               > .ParamType {
                  margin-top: 4px;
               }
            }

            > .ParamDesc {
               align-self: stretch;
               flex: auto;
               padding: @padding-y @padding-x;

               ul, ol {
                  margin-left: 0 !important;
               }
            }
         }
      }
   }
</style>