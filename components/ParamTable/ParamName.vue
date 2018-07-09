<template lang="jade">
   .ParamName
      span.left(v-if="optional") [
      span.name(v-if="name") {{ name }}
      span.right(v-if="optional") ]
</template>



<script lang="coffee">
   module.exports =
      props:
         'param':
            type: Object
            required: true

      computed:
         name:     -> @param.name ? ''
         optional: -> @param.optional or _.has(@param, 'default')
</script>



<style lang="less">
   .ParamTable {
      .ParamName {
         line-height: 21px;
         text-align: justify;
         font-size: 16px;
         color: #273340;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.175);
         word-break: break-all;
         user-select: none;

         .name {
            user-select: all;
         }

         .left { margin-right: 3px }
         .right { margin-left: 3px }
      }
   }
</style>