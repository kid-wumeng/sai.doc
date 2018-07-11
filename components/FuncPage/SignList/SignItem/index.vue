<template lang="jade">
   .SignItem
      Row
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
         > .Row {
            > .Column.left {
               flex: none;
               width: 40%;
               .SignDesc {
                  margin-top: 28px;
               }
               .SignMore {
                  margin-top: 22px;
               }
            }
            > .Column.right {
               margin-left: 40px;
               > *:not(:first-child) {
                  margin-top: 30px;
               }
            }
         }
      }
   }
</style>