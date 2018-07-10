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
      font-weight: 600;
      user-select: all;
   }
</style>