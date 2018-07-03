<template lang="jade">
   .Sign
      Row
         Column
            Name(:sign="sign")
            DescArea(:sign="sign")
         ParamTable(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':      require('~/components/Row').default
         'Column':   require('~/components/Column').default
         'Name':     require('./Name').default
         'DescArea': require('./DescArea').default
         'ParamTable':   require('./ParamTable').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .Sign {
      > .Row {

         > .Column {
            flex: none;
            width: 40%;
            > .DescArea {
               margin-top: 4px;
            }
         }

         > .ParamTable {
            flex: auto;
            margin-left: 20px;
         }
      }
   }
</style>