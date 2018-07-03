<template lang="jade">
   TextArea.DescArea(:text="desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'param':
            type: Object
            required: true

      computed:
         desc: -> @param.desc ? ''
</script>



<style lang="less" scoped>
   .DescArea {
      > * {
         margin-bottom: 0;
      }
   }
</style>