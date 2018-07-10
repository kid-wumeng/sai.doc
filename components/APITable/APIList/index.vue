<template lang="jade">
   Table.APIList(auto)
      APIItem(v-for="(api, i) in apis", :api="api", :key="i", :hide-type="hideType", :hide-default="hideDefault")
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

         'hideType':
            type: Boolean
            default: false

         'hideDefault':
            type: Boolean
            default: false
</script>


<style lang="less">
   .APIList {
      background-color: white;
   }
</style>