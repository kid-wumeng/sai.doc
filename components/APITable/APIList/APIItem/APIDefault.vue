<template lang="jade">
   Markdown.APIDefault(v-if="optional", :text="defaultsDisplay")
   Markdown.APIDefault(v-else, text="required" required)
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
      color: lighten(#A2AEBA, 20%);
      white-space: nowrap;

      em {
         font-weight: 400;
         color: #273340;
      }
   }

   .APIDefault[required] {
      text-align: center;
      font-family: "Ubuntu";
      font-weight: 500;
      font-size: 13px;
      color: lighten(#A2AEBA, 20%);
   }
</style>