<template lang="jade">
   .FuncPage
      //- FuncName(:func="func")
      FuncDesc(:func="func")
      SignList(:signs="signs")
      FuncDetail(:func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'FuncName':   require('./FuncName').default
         'FuncDesc':   require('./FuncDesc').default
         'SignList':   require('./SignList').default
         'FuncDetail': require('./FuncDetail').default

      props:
         'func':
            type: Object
            required: true

      computed:
         signs: -> @func.signs
</script>



<style lang="less">
   .FuncPage {
      background-color: white;

      > .FuncName {
         margin-bottom: 20px;
      }

      > .FuncDesc {
         margin-bottom: 80px;
      }

      > .SignList {
         margin-bottom: 80px;
      }
   }
</style>