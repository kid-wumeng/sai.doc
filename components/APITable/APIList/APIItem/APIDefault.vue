<template lang="jade">
   Markdown.APIDefault(v-if="optional", :text="defaultsDisplay")
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
         optional:        -> @api.optional or _.has(@api, 'default')
         defaults:        -> @api.default
         defaultsFormat:  -> @formatValue(@defaults).replace(/\*/g, '&#42;')
         defaultsDisplay: -> "→ *#{@defaultsFormat}*"
</script>



<style lang="less">
   .APIDefault {
      color: lighten(#A2AEBA, 15%);
      em {
         font-style: italic;
         color: #273340;
      }
   }
</style>