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
   .APITable .APIName {
      text-align: center;
      font-family: "Ubuntu";
      font-weight: 500;
      font-size: 14px;
      color: #273340;
      white-space: nowrap;
      user-select: all;
      -webkit-font-smoothing: subpixel-antialiased;
   }

   .APITable .APIName[optional] {
      font-weight: 300;
   }
</style>