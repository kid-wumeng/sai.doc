<template lang="jade">
   Markdown.APIDesc(v-if="desc", :text="desc")
   Markdown.APIDesc(v-else, text="..." empty)
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
         desc: -> @api.desc
</script>



<style lang="less">
   .APITable .APIDesc {
      font-size: 13px;
      li {
         margin-left: 4px;
      }
      em {
         font-weight: 600;
      }
   }
   .APITable .APIDesc[empty] {
      color: #A2AEBA;
      user-select: none;
   }
</style>