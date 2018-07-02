<template lang="jade">
   #index
      Side(:docs="docs", :ver="ver", :lang="lang", :lang-default="langDefault")
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

         vers:        -> Object.keys(@docs).sort(compareVersions).reverse()

         verLast:     -> @vers[0]

         verQuery:    -> @$route.query['ver']

         ver:         -> if @vers.includes(@verQuery) then @verQuery else @verLast

         langs:       -> Object.keys(@docs[@ver])

         langDefault: -> 'zh-Hans'

         langQuery:   -> @$route.query['lang']

         lang:        -> if @langs.includes(@langQuery) then @langQuery else @langDefault
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