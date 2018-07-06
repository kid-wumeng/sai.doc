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
         border: 1px solid lighten(#A2AEBA, 18%);
         border-radius: 2px;
         box-shadow: 0 0 15px rgba(100, 100, 100, 0.12);
      }
   }
</style>