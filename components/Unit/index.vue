<template lang="jade">
   .Unit {{ name }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'unit':
            type: Object
            required: true

      computed:
         name: -> @unit.name ? 'unit-name ???'
</script>



<style lang="less">
   .Unit {
   }
</style>