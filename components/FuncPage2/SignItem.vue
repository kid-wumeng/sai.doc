<template lang="jade">
   Row.SignItem
      Column
         SignName(:sign="sign")
         SignDesc(:sign="sign")
         SignMore(:sign="sign")
      SignTable(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':       require('~/components/Row').default
         'Column':    require('~/components/Column').default
         'SignName':  require('./SignName').default
         'SignDesc':  require('./SignDesc').default
         'SignMore':  require('./SignMore').default
         'SignTable': require('./SignTable').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .SignItem {
         > .Column {
            flex: none;
            width: 40%;

            > .SignDesc {
               margin-top: 30px;
            }

            > .SignMore {
               margin-top: 24px;
            }
         }

         > .SignTable {
            flex: auto;
            margin-left: 50px;
         }
      }
   }
</style>