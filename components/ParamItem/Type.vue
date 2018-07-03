<template lang="jade">
   .Type {{ type }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'param':
            type: Object
            required: true

      computed:
         type: -> @param.type ? 'param-type ???'
</script>



<style lang="less" scoped>
   .Type {
      font-size: 14px;
      color: #A2AEBA;
      word-break: break-all;
      user-select: all;
   }
</style>