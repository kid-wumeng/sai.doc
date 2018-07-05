<template lang="jade">
   .PackList
      PackItem(v-for="pack in packs", :key="pack.name", :pack="pack")
</template>



<script lang="coffee">
   module.exports =
      components:
         'PackItem': require('./PackItem').default

      props:
         'packs':
            type: Array
            default: -> []
</script>