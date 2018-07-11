<template lang="jade">
   Table.SignList(v-if="signs.length" auto)
      SignItem(v-for="(sign, i) in signs", :key="i", :sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Table':    require('~/components/Table').default
         'SignItem': require('./SignItem').default

      props:
         'signs':
            type: Array
            default: -> []
</script>



<style lang="less">
   .PackPage {
      .SignList {
         background-color: white;
      }
   }
</style>