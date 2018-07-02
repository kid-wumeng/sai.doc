<template lang="jade">
   .Side
      nuxt-link(to="/AlertDialog") 数据结构
</template>



<script lang="coffee">
   module.exports =
      props:
         'docs':
            type: Object
            required: true

      computed:
         lang: -> @$route.query['lang']
         ver:  -> @$route.query['ver']

      mounted: ->


</script>



<style lang="less">
   .Side {
   }
</style>