<template lang="jade">
   .APIDefault {{ formatValue(api.default) }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'api':
            type: Object
            required: true
</script>



<style lang="less">
   .APIDefault {
   }
</style>