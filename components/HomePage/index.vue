<template lang="jade">
   .HomePage(v-if="doc")
      DocMore(:doc="doc")
</template>



<script lang="coffee">
   module.exports =
      components:
         DocMore: require('./DocMore').default

      computed:
         doc: -> @$store.state.doc
</script>



<style lang="less">
   .HomePage {
      padding: 50px 50px;
   }
</style>