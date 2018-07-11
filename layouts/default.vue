<template lang="jade">
   App
</template>



<script lang="coffee">
   module.exports =
      components:
         'App': require('~/App').default
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
      font-weight: 300;
      src: url(~/assets/fonts/Ubuntu-L.ttf);
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
      font-family: "Ubuntu", "Helvetica Neue", "Arial", "Verdana", "Roboto", "PingFang SC", "Hiragino Sans GB", sans-serif;
      color: #242424;
      background-color: #FAF4E9;
      background-color: white;
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

   #__nuxt {
     height: 100%;
   }

   #__layout {
     height: 100%;
     display: flex;
     justify-content: center;
     align-items: center;
   }
</style>