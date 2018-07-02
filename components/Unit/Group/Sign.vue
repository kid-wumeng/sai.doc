<template lang="jade">
   tr.Sign
      td
         pre.await(:yes="async") {{ await }}
         pre.name {{ name }}
      td.desc {{ desc }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'sign':
            type: Object
            required: true

      computed:
         async: -> @sign.async ? false
         name:  -> @sign.name  ? 'sign-name ???'
         desc:  -> @sign.desc  ? ''

         await: -> if @async then 'await ' else '      '
</script>



<style lang="less">
   .Unit .Sign {
      pre {
         display: inline-block;
         font-family: "Monaco";

         &.await:not([yes]) {
            user-select: none;
         }
      }
   }
</style>