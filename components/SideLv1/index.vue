<template lang="jade">
   .SideLv1
      nuxt-link.home(to="/") HOME
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
      width: 240px;
      overflow: scroll;
      padding: 20px 0;

      > a {
         display: block;
         padding: 10px 16px;
         font-family: "Ubuntu";
         font-size: 14px;
         color: #445669;

         &:hover {
            background-color: #F6F6F6;
         }

         &.active {
            font-weight: 500;
            color: white;
            background-color: #273340;
         }
      }
   }
</style>