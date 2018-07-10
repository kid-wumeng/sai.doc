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
      li {
         margin-left: 1em;
      }
   }
</style>