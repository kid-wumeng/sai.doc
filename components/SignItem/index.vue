<template lang="jade">
   Row.SignItem
      Column
         Name(:sign="sign")
         DescArea(:sign="sign")
      SignTable(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':       require('~/components/Row').default
         'Column':    require('~/components/Column').default
         'SignTable': require('~/components/SignTable').default
         'Name':      require('./Name').default
         'DescArea':  require('./DescArea').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .SignItem {
      > .Column {
         flex: none;
         width: 40%;
         > .DescArea {
            margin-top: 4px;
         }
      }

      > .SignTable {
         flex: auto;
         margin-left: 36px;
      }
   }
</style>