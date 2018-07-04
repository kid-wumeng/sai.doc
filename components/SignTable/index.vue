<template lang="jade">
   .SignTable(v-if="sign")
      ParamsTable(:sign="sign")
      ReturnTable(:sign="sign")
      ThrowsTable(:sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'ParamsTable': require('./ParamsTable').default
         'ReturnTable': require('./ReturnTable').default
         'ThrowsTable': require('./ThrowsTable').default

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

      .ThrowsTable {
         .ParamItem {
            .Name {
               line-height: 23px;
               font-weight: 600;
               font-size: 13px;
               color: lighten(red, 28%);
               text-shadow: none;
            }
         }
      }
   }
</style>