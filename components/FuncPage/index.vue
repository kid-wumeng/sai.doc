<template lang="jade">
   .FuncPage
      Column(x="left")
         FuncName(:func="func")
         FuncDesc(:func="func")
      SignList(:signs="signs")
      FuncMore(:func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':      require('~/components/Row').default
         'Column':   require('~/components/Column').default
         'FuncName': require('./FuncName').default
         'FuncDesc': require('./FuncDesc').default
         'SignList': require('./SignList').default
         'FuncMore': require('./FuncMore').default

      props:
         'func':
            type: Object
            required: true

      computed:
         signs: -> @func.signs
</script>



<style lang="less">
   .FuncPage {
      > .Column {
         padding: 50px;
         padding-bottom: 55px;
         background-color: #1D262F;
         .FuncDesc {
            margin-top: 45px;
         }
      }
      > .SignList {
         margin-top: 25px;
      }
   }
</style>