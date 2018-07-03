<template lang="jade">
   .SideLv1
      nuxt-link.home(to="/") Sai
      nuxt-link.unit(v-for="unit in units", :key="unit.name", :to="getTo(unit)") {{ unit.name }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'units':
            type: Array
            default: -> []


      methods:
         getTo: ( unit ) ->
            return { path: '/_' + unit.path, query: @$route.query }
</script>



<style lang="less">
   .SideLv1 {
      overflow: scroll;
      padding: 20px 0;
      background-color: #272E3D;

      > .home,
      > .unit {
         display: block;
         padding: 10px 20px;
      }

      > .home {
         text-align: center;
         font-family: "Futura";
         font-size: 30px;
         color: #CCC;
         text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
      }

      > .unit {
         font-family: "Futura";
         font-size: 14px;
         color: #CCC;

         &:hover {
            color: #272E3D;
            background-color: white;
         }

         &[is-current-unit] {
            font-weight: 500;
         }
      }
   }
</style>