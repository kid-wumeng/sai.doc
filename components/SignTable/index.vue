<template lang="jade">
   .SignTable(v-if="sign")
      ParamsTable(:sign="sign")
      ReturnTable(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'ParamsTable': require('./ParamsTable').default
         'ReturnTable': require('./ReturnTable').default

      props:
         'sign':
            type: Object
            default: null
</script>



<style lang="less">
   .SignTable {
      border: 1px solid lighten(#A2AEBA, 20%);
      border-radius: 2px;
      box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
      overflow: hidden;

      .ParamTable:last-child {
         .ParamItem:last-child {
         }
      }
   }
</style>