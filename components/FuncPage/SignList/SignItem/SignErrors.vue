<template lang="jade">
   .SignErrors(v-if="sign.errors")
      APITable(title="errors", :apis="sign.errors" hide-type hide-default)
</template>



<script lang="coffee">
   module.exports =
      components:
         'APITable': require('~/components/APITable').default

      props:
         'sign':
            type: Object
            required: true
</script>



<style lang="less">
   .FuncPage {
      .SignErrors {
         .APIName {
            font-family: "Ubuntu";
            font-weight: 400;
            font-size: 12px;
            color: lighten(red, 20%);
            text-shadow: none;
         }
      }
   }
</style>