<template lang="jade">
   #index
      Side(:docs="docs", :lang="lang", :ver="ver")
      .main
         nuxt-child
</template>



<script lang="coffee">

   compareVersions = require('compare-versions')
   docs            = require('~/docs')

   module.exports =

      components:
         'Side': require('~/components/Side').default

      computed:
         docs:        -> docs

         langs:       -> Object.keys(@docs)

         langDefault: -> 'zh-Hans'

         langQuery:   -> @$route.query['lang']

         lang:        -> if @langs.includes(@langQuery) then @langQuery else @langDefault

         vers:        -> Object.keys(@docs[@langDefault]).sort(compareVersions).reverse()

         verLast:     -> @vers[0]

         verQuery:    -> @$route.query['ver']

         ver:         -> if @vers.includes(@verQuery) then @verQuery else @verLast


      mounted: ->
         console.log docs
</script>



<style lang="less">

   @side-width: 240px;

   #index {
      .Side {
         position: fixed;
         left: 0;
         top: 0;
         width: @side-width;
         height: 100%;
         overflow: scroll;
      }

      .main {
         margin-left: @side-width;
      }
   }
</style>