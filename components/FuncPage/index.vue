<template lang="jade">
   .FuncPage
      FuncName(:func="func")
      FuncDesc(:func="func")
      hr
      SignList(:signs="signs")
      FuncDetail(:func="func")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Column':     require('~/components/Column').default
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
      padding-top: 55px;
      padding-bottom: 55px;

      > *:not(hr) {
         margin: 0 50px;
      }

      > .FuncDesc {
         margin-top: 55px;
      }

      > hr {
         margin-top: 75px;
         border: none;
         border-bottom: 1px dashed lighten(#A2AEBA, 22%);
      }

      > .SignList {
         margin-top: 75px;
      }

      > .FuncDetail {
         margin-top: 75px;
      }
   }
</style>