<template lang="jade">
   .ParamName
      span.left(v-if="defaults") [
      span.name(v-if="name") {{ name }}
      span.right(v-if="defaults") ]
</template>



<script lang="coffee">
   module.exports =
      props:
         'param':
            type: Object
            required: true

      computed:
         name:     -> @param.name ? ''
         defaults: -> @param.default
</script>



<style lang="less">
   .ParamTable {
      .ParamName {
         line-height: 20px;
         font-size: 16px;
         color: #273340;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.175);
         word-break: break-all;
         user-select: none;

         .name {
            user-select: all;
         }

         .left::after   { content: " " }
         .right::before { content: " " }
      }
   }
</style>