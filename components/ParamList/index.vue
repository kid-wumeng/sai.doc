<template lang="jade">
   .ParamList(v-if="show")
      ParamItem(v-for="(param, i) in params", :key="i", :param="param")
</template>



<script lang="coffee">
   module.exports =

      components:
         'ParamItem': require('~/components/ParamItem').default

      props:
         'params':
            type: Array
            default: -> []

      computed:
         show: -> @params.length > 0
</script>



<style lang="less">
   .ParamList {
   }
</style>