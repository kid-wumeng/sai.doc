<template lang="jade">
   .ParamItem
      Row
         Column
            Name(:param="param")
            Type(:param="param")
         DescArea(:param="param")
      ChildrenTable(:param="param")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':           require('~/components/Row').default
         'Column':        require('~/components/Column').default
         'Name':          require('./Name').default
         'Type':          require('./Type').default
         'DescArea':      require('./DescArea').default
         'ChildrenTable': require('./ChildrenTable').default

      props:
         'param':
            type: Object
            required: true
</script>



<style lang="less" scoped>

   @padding: 20px;

   .ParamItem {
      > .Row {
         > .Column {
            flex: none;
            width: 35%;
            line-height: 22px;
            padding: @padding;

            > .Type {
               margin-top: 4px;
            }
         }

         > .DescArea {
            flex: auto;
            padding: @padding;
         }
      }
   }
</style>