<template lang="jade">
   Markdown.APIDesc(:text="api.desc")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Markdown': require('~/components/Markdown').default

      props:
         'api':
            type: Object
            required: true
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