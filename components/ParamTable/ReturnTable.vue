<template lang="jade">
   .ReturnTable(v-if="true")
      Title(title="return")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Title':     require('./Title').default
         'ParamItem': require('./ParamItem').default
</script>



<style lang="less" scoped>
   .ReturnTable {
      margin-top: 8px;
      padding-top: 8px;
      background-color: rgba(250, 250, 250, 0.93);
      position: relative;

      .ParamItem {
         border-bottom: 1px solid lighten(#A2AEBA, 26%);
         &:last-child {
            border-bottom: none;
         }
      }
   }
</style>