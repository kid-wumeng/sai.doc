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
      font-weight: 400;
      font-size: 13px;
      white-space: nowrap;
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
      user-select: all;
      -webkit-font-smoothing: subpixel-antialiased;
   }

   .APIName[optional] {
      font-weight: 300;
      text-shadow: none;
      opacity: 0.8;
      -webkit-font-smoothing: subpixel-antialiased;
   }
</style>