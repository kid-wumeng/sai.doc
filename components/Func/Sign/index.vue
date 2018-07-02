<template lang="jade">
   .Sign
      .name {{ await + name }}
      .desc {{ desc }}

      table
         Param(v-for="(param, i) in params", :key="i", :param="param")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Param': require('./Param').default

      props:
         'sign':
            type: Object
            required: true

      computed:
         async:  -> @sign.async  ? false
         name:   -> @sign.name   ? 'sign-name ???'
         desc:   -> @sign.desc   ? ''
         params: -> @sign.params ? []

         await:  -> if @async then 'await ' else ''
</script>



<style lang="less">
   .Func .Sign {
      > table {
         table-layout: fixed;
      }
   }
</style>