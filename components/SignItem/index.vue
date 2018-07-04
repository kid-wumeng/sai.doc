<template lang="jade">
   Row.SignItem
      Column
         SignName(:sign="sign")
         DescArea(:sign="sign")
         TextArea(:sign="sign")
      SignTable(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':       require('~/components/Row').default
         'Column':    require('~/components/Column').default
         'SignName':  require('~/components/SignName').default
         'SignTable': require('~/components/SignTable').default
         'DescArea':  require('./DescArea').default
         'TextArea':  require('./TextArea').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .SignItem {
      > .Column {
         flex: none;
         width: 50%;

         > .SignName {
            line-height: 21px;
            font-weight: 500;
            font-size: 18px;
            letter-spacing: 0.25px;
         }

         > .TextArea {
            margin-top: 5px;
         }

         > .DescArea {
            margin-top: 16px;
         }
      }

      > .SignTable {
         flex: auto;
         margin-left: 36px;
      }
   }
</style>