<template lang="jade">
   .ParamType(v-if="type") {{ type }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'param':
            type: Object
            required: true

      computed:
         type: -> @param.type ? ''
</script>



<style lang="less">
   .ParamTable {
      .ParamType {
         font-size: 14px;
         font-weight: 500;
         color: lighten(#A2AEBA, 12%);
         word-break: break-all;
         user-select: all;
      }
   }
</style>