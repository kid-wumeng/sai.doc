<template lang="jade">
   #App(v-if="ready")
      SideLv1
      SideLv2
      nuxt.main
</template>



<script lang="coffee">

   global._ = require('lodash')

   if process.browser
      Vue = require('vue').default
   else
      Vue = require('vue')

   Vue.prototype.formatSignName = require('~/utils/formatSignName')
   Vue.prototype.markdown       = require('~/utils/markdown')
   Vue.prototype.to             = require('~/utils/to')



   module.exports =
      components:
         'SideLv1': require('~/components/SideLv1').default
         'SideLv2': require('~/components/SideLv2').default


      computed:
         ready: -> @$store.state.ready


      mounted: ->
         @updateStore()
         @updateStyle()

         window.addEventListener('resize', @updateStyle)


      watch:
         '$route': ( r1, r2 ) ->
            if (r1.query.ver isnt r2.query.ver) or (r1.query.lang isnt r2.query.lang)
               @updateStore()


      methods:
         updateStore: ->
            @$store.commit('update', @$route)

         updateStyle: ->
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
         height:      100%;
         overflow:    scroll;
      }
   }
</style>