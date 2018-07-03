<template lang="jade">
   Row.ParamItem
      Column
         Name(:param="param")
         Type(:param="param")
      DescArea(:param="param")
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
         'param':
            type: Object
            required: true
</script>



<style lang="less" scoped="">

   @padding: 20px;

   .ParamItem {
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