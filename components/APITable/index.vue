<template lang="jade">
   .APITable(v-if="show")
      Title(:title="title")
      APIList(:apis="apis")
</template>



<script lang="coffee">
   module.exports =
      components:
         'APIList': require('./APIList').default
         'Title':   require('./Title').default

      props:
         'title':
            type: String
            default: ''

         'apis':
            type: Array
            default: -> []

      computed:
         show: -> Array.isArray(@apis) and @apis.length > 0
</script>



<style lang="less">
   .APITable {
      .Title {
         margin-left: 12px;
         margin-bottom: 12px;
      }
   }
</style>