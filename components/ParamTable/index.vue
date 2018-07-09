<template lang="jade">
   .ParamTable(v-if="show", :exist-title="!!title")
      Title(:title="title")
      ParamList(:params="params")
</template>



<script lang="coffee">
   module.exports =

      components:
         'ParamList': require('./ParamList').default
         'Title':     require('./Title').default

      props:
         'title':
            type: String
            default: ''

         'params':
            type: Array
            default: -> []

      computed:
         show: -> Array.isArray(@params) and @params.length > 0
</script>



<style lang="less">
   .ParamTable {
      position: relative;

      .ParamItem {
         border-top: 1px solid lighten(#A2AEBA, 26%);
      }
   }

   .ParamTable[exist-title] {
      margin-top: 30px;
      .ParamItem:first-child {
         padding-top: 10px;
      }
   }
</style>