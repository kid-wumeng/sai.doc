<template lang="jade">
   #method(v-if="method")
      Side2(:method="method")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Side2': require('~/components/Side2').default

      computed:
         method: -> @$route.params.method
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