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
         font-size: 15px;
         font-weight: 400;
         color: lighten(#A2AEBA, 0%);
         word-break: break-all;
         user-select: all;
      }
   }
</style>