<template lang="jade">
   ParamTable.ParamsTable(:params="params")
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
         params: -> @sign.params ? []
</script>



<style lang="less">
   .ParamsTable {
   }
</style>