<template lang="jade">
   #App(v-if="ready")
      SideLv1
      SideLv2
      nuxt.main
</template>



<script lang="coffee">

   Vue = require('vue').default ? require('vue')

   global._ = Vue.prototype._ = require('lodash')

   Vue.prototype.to = require('~/utils/to')

   global.utils = Vue.prototype.utils =
      'formatData': require('~/utils/formatData')
      'markdown':   require('~/utils/markdown')


   module.exports =

      components:
         'SideLv1': require('~/components/SideLv1').default
         'SideLv2': require('~/components/SideLv2').default


      computed:
         ready: -> @$store.state.ready


      mounted: ->
         @$store.commit('update', @$route)
         @setAppHeight()

         window.addEventListener('resize', @setAppHeight)


      watch:
         '$route': ( newRoute, oldRoute ) ->

            newVer  = newRoute.query.ver
            oldVer  = oldRoute.query.ver

            newLang = newRoute.query.lang
            oldLang = oldRoute.query.lang

            if ( newVer isnt oldVer ) or ( newLang isnt oldLang )
               @$store.commit('update', newRoute)

      methods:
         setAppHeight: ->
            document.body.style.height = window.innerHeight + 'px'
</script>



<style lang="less">
   #App {
      max-width: 1680px;
      width: 100%;
      height: 100%;
      position: relative;
      overflow: hidden;

      @side-lv1-width: 140px;
      @side-lv2-width: 200px;

      .SideLv1 {
         position: absolute;
         top:      0;
         left:     0;
         width:    @side-lv1-width;
      }

      .SideLv2 {
         position: absolute;
         top:      0;
         left:     @side-lv1-width;
         width:    @side-lv2-width;
      }

      .main {
         margin-left: @side-lv1-width + @side-lv2-width;
         height: 100%;
         overflow: scroll;
      }
   }
</style>