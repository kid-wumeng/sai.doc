<template lang="jade">
   nuxt(v-if="$store.state.ready")
</template>



<script lang="coffee">

   Vue = require('vue').default ? require('vue')

   global.utils = Vue.prototype.utils =
      markdown: require('~/utils/markdown')


   module.exports =

      mounted: ->
         @$store.commit('update', @$route)

      watch:
         '$route': ( newRoute, oldRoute ) ->

            newVer  = newRoute.query.ver
            oldVer  = oldRoute.query.ver

            newLang = newRoute.query.lang
            oldLang = oldRoute.query.lang

            if ( newVer isnt oldVer ) or ( newLang isnt oldLang )
               console.log '098765'
               @$store.commit('update', newRoute)
</script>



<style lang="less">

   @font-face {
      font-family: "Lato";
      font-weight: 400;
      src: url(~/assets/fonts/Lato-Regular.ttf);
   }

   @font-face {
      font-family: "Lato";
      font-weight: 500;
      src: url(~/assets/fonts/Lato-Medium.ttf);
   }

   @font-face {
      font-family: "Lato";
      font-weight: 600;
      src: url(~/assets/fonts/Lato-Semibold.ttf);
   }

   @font-face {
      font-family: "Ubuntu";
      font-weight: 400;
      src: url(~/assets/fonts/Ubuntu-R.ttf);
   }

   @font-face {
      font-family: "Ubuntu";
      font-weight: 500;
      src: url(~/assets/fonts/Ubuntu-M.ttf);
   }

   @font-face {
      font-family: "Ubuntu";
      font-weight: 600;
      src: url(~/assets/fonts/Ubuntu-B.ttf);
   }

   @font-face {
      font-family: "Adele";
      font-weight: 400;
      src: url(~/assets/fonts/ADELE-Light.ttf);
   }

   * {
      box-sizing: border-box;
      margin: 0;
      border: 0;
      padding: 0;
   }

   html {
      height: 100%;
   }

   body {
      min-height: 100%;
      font-family: "Ubuntu", "Helvetica Neue", "Arial", "Verdana", "Roboto", "PingFang SC", "Hiragino Sans GB", sans-serif;;
      color: #242424;
      // background-image: url(~/assets/images/bg.jpg);
      background-repeat: no-repeat;
      background-position: center;
      background-size: cover;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
   }

   li {
      list-style-position: inside;
   }

   a {
      color: inherit;
      text-decoration: none;
   }
</style>