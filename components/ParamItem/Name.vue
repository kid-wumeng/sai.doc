<template lang="jade">
   .Name
      span.left(v-if="optional") [
      span.name {{ name }}
      span.right(v-if="optional") ]
</template>



<script lang="coffee">
   module.exports =
      props:
         'param':
            type: Object
            required: true

      computed:
         name:     -> @param.name     ? 'param-name ???'
         optional: -> @param.optional ? false
</script>



<style lang="less" scoped>
   .Name {
      font-size: 14px;
      color: #273340;
      word-break: break-all;
      user-select: none;

      .name {
         user-select: all;
      }

      .left::after   { content: " " }
      .right::before { content: " " }
   }
</style>