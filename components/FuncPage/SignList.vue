<template lang="jade">
   .SignList
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
   .FuncPage {
      .SignList {
         > .SignItem {
            margin-bottom: 40px;
            &:last-child {
               margin-bottom: 0;
            }
         }
      }
   }
</style>