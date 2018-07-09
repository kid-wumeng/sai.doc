<template lang="jade">
   .ParamItem
      Row
         Column.left
            ParamName(:param="param")
            ParamType(:param="param")
         Column.right
            ParamDefault(:param="param")
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
         'ParamDefault':  require('./ParamDefault').default
         'ParamDesc':     require('./ParamDesc').default
         'ChildrenTable': require('./ChildrenTable').default

      props:
         'param':
            type: Object
            required: true
</script>



<style lang="less">

   @padding-x: 29px;
   @padding-y: 31px;

   .ParamTable {
      .ParamItem {
         > .Row {
            > .Column.left {
               flex: none;
               width: 40%;
               padding: @padding-y @padding-x;

               > .ParamType {
                  margin-top: 16px;
               }
            }

            > .Column.right {
               align-self: stretch;
               flex: auto;
               padding: @padding-y @padding-x;

               > .ParamDefault {
                  margin-bottom: 10px;
               }

               > .ParamDesc {
                  ul, ol {
                     margin-left: 0 !important;
                  }
               }
            }
         }
      }
   }
</style>