<template lang="jade">
   .SignItem
      Row
         Column
            SignName(:sign="sign")
            DescArea(:sign="sign")
            IntroArea(:sign="sign")
         SignTable(:sign="sign")
      DetailArea(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':        require('~/components/Row').default
         'Column':     require('~/components/Column').default
         'SignName':   require('~/components/SignName').default
         'SignTable':  require('~/components/SignTable').default
         'DescArea':   require('./DescArea').default
         'IntroArea':  require('./IntroArea').default
         'DetailArea': require('./DetailArea').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .SignItem {
      > .Row {
         > .Column {
            flex: none;
            width: 40%;

            > .SignName {
               line-height: 21px;
               font-weight: 500;
               font-size: 18px;
               letter-spacing: 0.25px;
            }

            > .DescArea {
               margin-top: 16px;
            }

            > .IntroArea {
               margin-top: 5px;
            }
         }

         > .SignTable {
            flex: auto;
            margin-left: 36px;
         }
      }

      > .DetailArea {
         margin-top: 24px;
      }
   }
</style>