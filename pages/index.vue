<template lang="jade">
   #index
      Side1
      .main
         nuxt-child
</template>



<script lang="coffee">
   module.exports =
      components:
         'Side1': require('~/components/Side1').default
</script>



<style lang="less">

   @side-width: 240px;

   #index {
      .Side1 {
         position: fixed;
         left: 0;
         top: 0;
         width: @side-width;
         height: 100%;
         overflow: scroll;
      }

      .main {
         margin-left: @side-width;
      }
   }
</style>