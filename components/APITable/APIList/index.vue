<template lang="jade">
   Table.APIList(auto)
      APIItem(v-for="(api, i) in apis", :api="api", :key="i")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Table':   require('~/components/Table').default
         'APIItem': require('./APIItem').default

      props:
         'apis':
            type: Array
            required: true
</script>


<style lang="less">
   .APIList {
   }
</style>