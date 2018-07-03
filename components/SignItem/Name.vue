<template lang="jade">
   .Name {{ displaySign }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'sign':
            type: Object
            required: true

      computed:
         displaySign: -> utils.displaySign(@sign)
</script>



<style lang="less" scoped>
   .Name {
      line-height: 21px;
      font-weight: 500;
      font-size: 17px;
      color: #273340;
      user-select: all;
   }
</style>