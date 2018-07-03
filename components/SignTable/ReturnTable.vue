<template lang="jade">
   ParamTable.ReturnTable(title="return", :params="returns")
</template>



<script lang="coffee">
   module.exports =
      components:
         'ParamTable': require('~/components/ParamTable').default

      props:
         'sign':
            type: Object
            default: null

      computed:
         returns: -> if @sign.return then [@sign.return] else []
</script>



<style lang="less">
   .ReturnTable {
      background-color: rgba(250, 250, 250, 1);
   }
</style>