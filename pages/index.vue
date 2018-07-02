<template lang="jade">
   #index
      Side
      .main
         nuxt-child
</template>



<script lang="coffee">
   module.exports =
      components:
         'Side': require('~/components/Side').default

      mounted: ->
         console.log docs['zh-Hans']['0.3']['string']['base']['len']
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
         background-color: red;
      }

      .main {
         margin-left: @side-width;
      }
   }
</style>