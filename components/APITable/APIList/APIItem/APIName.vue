<template lang="jade">
   .APIName(v-if="api.name", :optional="optional") {{ api.name }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'api':
            type: Object
            required: true

      computed:
         optional: -> @api.optional or _.has(@api, 'default')
</script>



<style lang="less">
   .APIName {
      text-align: center;
      font-family: "Ubuntu";
      font-weight: 500;
      font-size: 13px;
      white-space: nowrap;
      text-shadow: 0 0 2px rgba(0, 0, 0, 0.3);
      user-select: all;
   }

   .APIName[optional] {
      font-weight: 400;
      text-shadow: none;
      opacity: 0.7;
   }
</style>