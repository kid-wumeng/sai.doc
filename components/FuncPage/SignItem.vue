<template lang="jade">
   .SignItem
      Row
         Column
            SignName(:sign="sign")
            SignDesc(:sign="sign")
            SignIntro(:sign="sign")
         SignTable(:sign="sign")
      SignDetail(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':        require('~/components/Row').default
         'Column':     require('~/components/Column').default
         'SignName':   require('./SignName').default
         'SignDesc':   require('./SignDesc').default
         'SignIntro':  require('./SignIntro').default
         'SignTable':  require('./SignTable').default
         'SignDetail': require('./SignDetail').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .SignItem {
         > .Row {
            > .Column {
               flex: none;
               width: 40%;

               > .SignDesc {
                  margin-top: 16px;
               }

               > .SignIntro {
                  margin-top: 5px;
               }
            }

            > .SignTable {
               flex: auto;
               margin-left: 36px;
            }
         }

         > .SignDetail {
            margin-top: 70px;
            width: 60%;
         }
      }
   }
</style>