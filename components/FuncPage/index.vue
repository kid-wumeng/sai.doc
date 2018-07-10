<template lang="jade">
   .FuncPage
      //- FuncName(:func="func")
      //- FuncDesc(:func="func")
      //- hr
      SignList(:signs="signs")
      //- FuncMore(:func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Row':      require('~/components/Row').default
         'Column':   require('~/components/Column').default
         # 'FuncName': require('./FuncName').default
         # 'FuncDesc': require('./FuncDesc').default
         'SignList': require('./SignList').default
         # 'FuncMore': require('./FuncMore').default

      props:
         'func':
            type: Object
            required: true

      computed:
         signs: -> @func.signs
</script>



<style lang="less">
   .FuncPage {
      // padding-top: 55px;
      // padding-bottom: 50px;
      //
      // > *:not(hr) {
      //    margin: 0 50px;
      // }
      //
      // > .FuncDesc {
      //    margin-top: 54px;
      // }
      //
      // > hr {
      //    margin-top: 70px;
      //    border: none;
      //    border-bottom: 1px dashed lighten(#A2AEBA, 22%);
      // }
      //
      // > .SignList {
      //    margin-top: 70px;
      // }
      //
      // > .FuncMore {
      //    margin-top: 75px;
      // }
   }
</style>