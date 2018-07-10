<template lang="jade">
   Row.SignItem
      Column.left
         SignName(:sign="sign")
         SignDesc(:sign="sign")
         SignMore(:sign="sign")
      Column.right
         SignParams(:sign="sign")
         SignReturn(:sign="sign")
         SignErrors(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':        require('~/components/Row').default
         'Column':     require('~/components/Column').default
         'SignName':   require('./SignName').default
         'SignDesc':   require('./SignDesc').default
         'SignMore':   require('./SignMore').default
         'SignParams': require('./SignParams').default
         'SignReturn': require('./SignReturn').default
         'SignErrors': require('./SignErrors').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .SignItem {
         padding: 50px;
         .Column.left {
            flex: none;
            width: 35%;
            .SignDesc {
               margin-top: 20px;
            }
            .SignMore {
               margin-top: 14px;
            }
         }
         .Column.right {
            margin-left: 50px;
            > *:not(:last-child) {
               margin-bottom: 30px;
            }
         }
      }
   }
</style>