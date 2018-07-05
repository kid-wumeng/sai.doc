<template lang="jade">
   .SignList(v-if="signs.length")
      SignItem(v-for="(sign, i) in signs", :key="i", :sign="sign")
</template>



<script lang="coffee">
   module.exports =
      components:
         'SignItem': require('./SignItem').default

      props:
         'signs':
            type: Array
            default: -> []
</script>



<style lang="less">
   .PackPage {
      .SignList {
         border: 1px solid lighten(#A2AEBA, 20%);
         border-radius: 2px;
         box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
         overflow: hidden;
      }
   }
</style>