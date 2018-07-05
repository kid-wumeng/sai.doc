<template lang="jade">
   TextArea.DescArea(:text="desc")
</template>



<script lang="coffee">
   module.exports =

      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'func':
            type: Object
            required: true

      computed:
         desc: -> @func.desc ? ''
</script>



<style lang="less" scoped>
   .DescArea {
      width: 600px;
      text-indent: 2em;
   }
</style>