<template lang="jade">
   #index
      Home
</template>



<script lang="coffee">
   module.exports =

      components:
         'Home': require('~/components/Home').default

      computed:
         units: -> @$store.state.doc.units ? []
</script>



<style lang="less">
</style>