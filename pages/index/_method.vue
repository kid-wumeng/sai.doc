<template lang="jade">
   #method
</template>



<script lang="coffee">
   module.exports =
      components:
         'Side': require('~/components/Side').default
</script>



<style lang="less">

   @side-width: 240px;

   #index {
      .Side {
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