<template lang="jade">
   Markdown.APIDesc(:text="desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Markdown': require('~/components/Markdown').default

      props:
         'api':
            type: Object
            required: true

      computed:
         desc: -> @api.desc ? '...'
</script>



<style lang="less">
   .APIDesc {
      position: relative;
      font-size: 13px;
      li {
         margin-left: 4px;
      }
   }
</style>