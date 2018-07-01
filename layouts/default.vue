<template lang="jade">
   nuxt
</template>



<style lang="less">

   @font-face {
      font-family: "Lato";
      font-weight: 400;
      src: url(/fonts/Lato-Regular.ttf);
   }

   @font-face {
      font-family: "Lato";
      font-weight: 500;
      src: url(/fonts/Lato-Medium.ttf);
   }

   @font-face {
      font-family: "Lato";
      font-weight: 600;
      src: url(/fonts/Lato-Semibold.ttf);
   }

   @font-face {
      font-family: "Ubuntu";
      font-weight: 400;
      src: url(/fonts/Ubuntu-R.ttf);
   }

   @font-face {
      font-family: "Ubuntu";
      font-weight: 500;
      src: url(/fonts/Ubuntu-M.ttf);
   }

   @font-face {
      font-family: "Ubuntu";
      font-weight: 600;
      src: url(/fonts/Ubuntu-B.ttf);
   }

   @font-face {
      font-family: "Adele";
      font-weight: 400;
      src: url(/fonts/ADELE-Light.ttf);
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
      font-family: "Lato", "Helvetica Neue", "Arial", "Verdana", "Roboto", "PingFang SC", "Hiragino Sans GB", sans-serif;;
      color: #242424;
      // background-image: url(/images/bg.jpg);
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