<template lang="jade">
   .APITable(v-if="show")
      //- Title(:title="title")
      APIList(:apis="apis")
</template>



<script lang="coffee">
   module.exports =
      components:
         'APIList': require('./APIList').default
      #    'Title':     require('./Title').default

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
      position: relative;
      margin: 100px;
      // .APIItem {
      //    border-top: 1px solid lighten(#A2AEBA, 26%);
      // }
   }

   .APITable[exist-title] {
      // margin-top: 30px;
      // .APIItem:first-child {
      //    padding-top: 10px;
      // }
   }
</style>