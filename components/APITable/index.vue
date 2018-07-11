<template lang="jade">
   .APITable(v-if="show")
      Title(:title="title")
      APIList(:apis="apis", :hide-type="hideType", :hide-default="hideDefault")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Column':  require('~/components/Column').default
         'APIList': require('./APIList').default
         'Title':   require('./Title').default

      props:
         'title':
            type: String
            default: ''

         'apis':
            type: Array
            default: -> []

         'hideType':
            type: Boolean
            default: false

         'hideDefault':
            type: Boolean
            default: false

      computed:
         show: -> Array.isArray(@apis) and @apis.length > 0
</script>



<style lang="less">
   .APITable {
   }
</style>