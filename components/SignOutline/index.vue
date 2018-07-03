<template lang="jade">
   .SignOutline(v-if="show")
      SignLine(v-for="(sign, i) in signs", :key="i", :sign="sign")
</template>



<script lang="coffee">
   module.exports =

      components:
         'SignLine': require('~/components/SignLine').default

      props:
         'signs':
            type: Array
            default: -> []

      computed:
         show: -> @signs.length > 0
</script>



<style lang="less">
   .SignOutline {
      border: 1px solid lighten(#A2AEBA, 20%);
      border-radius: 2px;
      box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
      overflow: hidden;
   }
</style>