<template lang="jade">
   #index
      SideLv1(:units="units")
      .main
         nuxt-child
</template>



<script lang="coffee">
   module.exports =

      components:
         'SideLv1': require('~/components/SideLv1').default

      computed:
         units: -> @$store.state.doc.units ? []
</script>



<style lang="less">

   @side-width: 240px;

   #index {
      .SideLv1 {
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