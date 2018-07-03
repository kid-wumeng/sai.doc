<template lang="jade">
   Row.ChildItem
      Column
         Name(:param="child")
         Type(:param="child")
      DescArea(:param="child")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':      require('~/components/Row').default
         'Column':   require('~/components/Column').default
         'TextArea': require('~/components/TextArea').default
         'Name':     require('./Name').default
         'Type':     require('./Type').default
         'DescArea': require('./DescArea').default

      props:
         'child':
            type: Object
            required: true
</script>



<style lang="less" scoped>

   @padding: 20px;

   .ChildItem {
      > .Column {
         flex: none;
         width: 30%;
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
</style>