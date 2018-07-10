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
      border: 1px solid lighten(#A2AEBA, 24%);
      border-radius: 2px;
      box-shadow: 0 0 15px rgba(100, 100, 100, 0.12);

      .APIItem:not(:first-child) {
         border-top: 1px solid lighten(#A2AEBA, 26%);
      }
   }
</style>