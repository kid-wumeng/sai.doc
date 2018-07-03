<template lang="jade">
   .Sign
      .name {{ await + 'sai.' + name }}
      .desc {{ desc }}

      ParamTable(:params="params")
</template>



<script lang="coffee">
   module.exports =

      components:
         'ParamTable': require('~/components/ParamTable').default

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
      > .name {
         user-select: all;
      }

      > .ParamTable {
         margin: 30px 0;
      }
   }
</style>