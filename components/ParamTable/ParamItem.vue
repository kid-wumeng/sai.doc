<template lang="jade">
   .ParamItem
      Row
         Column.left
            ParamName(:param="param")
            ParamType(:param="param")
         Column.right
            ParamRequired(:param="param")
            ParamDesc(:param="param")
            ParamDefault(:param="param")
      ChildrenTable(:param="param")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':           require('~/components/Row').default
         'Column':        require('~/components/Column').default
         'ParamName':     require('./ParamName').default
         'ParamType':     require('./ParamType').default
         'ParamRequired': require('./ParamRequired').default
         'ParamDefault':  require('./ParamDefault').default
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
            > .Column.left {
               flex: none;
               width: 45%;
               line-height: 22px;
               padding: @padding-y @padding-x;

               > .ParamType {
                  margin-top: 4px;
               }
            }

            > .Column.right {
               align-self: stretch;
               flex: auto;
               padding: @padding-y @padding-x;

               > .ParamDesc {
                  ul, ol {
                     margin-left: 0 !important;
                  }
               }

               > .ParamDefault {
                  margin-top: 2px;
               }
            }
         }
      }
   }
</style>