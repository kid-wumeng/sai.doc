<template lang="jade">
   .SideLv1
      Logo
      PackList(:packs="packs")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Logo':     require('./Logo').default
         'PackList': require('./PackList').default

      computed:
         packs: -> @$store.state.doc.packs ? []
</script>



<style lang="less">
   .SideLv1 {
      height: 100%;
      padding: 20px 0;
      background-color: #2A2833;
      overflow: scroll;
   }
</style>