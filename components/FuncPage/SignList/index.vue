<template lang="jade">
   .SignList
      SignItem(v-for="(sign, i) in signs", :sign="sign", :key="i")
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
         .SignItem:nth-child(even) {
            background-color: rgba(250, 250, 250, 1);
         }
      }
   }
</style>