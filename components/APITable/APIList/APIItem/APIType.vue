<template lang="jade">
   .APIType(v-if="api.type") {{ api.type }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'api':
            type: Object
            required: true
</script>



<style lang="less">
   .APIType {
      color: #A2AEBA;
   }
</style>