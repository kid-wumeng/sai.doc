<template lang="jade">
   .APIName(v-if="api.name") {{ api.name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'api':
            type: Object
            required: true

      computed:
         optional: -> @param.optional or _.has(@param, 'default')
</script>



<style lang="less">
   .APIName {
      font-weight: 500;
      text-shadow: 0 0 2px rgba(0, 0, 0, 0.3);
      user-select: all;
   }
</style>