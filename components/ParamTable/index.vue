<template lang="jade">
   .ParamTable(v-if="show")
      ParamItem(v-for="(param, i) in params", :key="i", :param="param")
</template>



<script lang="coffee">
   module.exports =
      components:
         'ParamItem': require('./ParamItem').default

      props:
         'params':
            type: Array
            default: -> []

      computed:
         show: -> @params.length > 0
</script>



<style lang="less">
   .ParamTable {
      border: 1px solid lighten(#A2AEBA, 20%);
      border-radius: 2px;
      box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
      overflow: hidden;

      .ParamItem {
         border-bottom: 1px solid lighten(#A2AEBA, 26%);
         &:last-child {
            border-bottom: none;
         }
      }
   }
</style>