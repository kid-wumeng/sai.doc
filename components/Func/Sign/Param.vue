<template lang="jade">
   tr.Param
      td.left
        .name {{ name }}
        .type {{ type }}
        .default {{ defaults }}
      td.right
        .desc {{ desc }}
        .scopes {{ scopes }}
</template>



<script lang="coffee">
   module.exports =

      props:
         'param':
            type: Object
            required: true

      computed:
         name:     -> @param.name     ? 'param-name ???'
         type:     -> @param.type     ? 'param-type ???'
         desc:     -> @param.desc     ? ''
         required: -> @param.required ? false
         defaults: -> @param.default  ? undefined
         scopes:   -> @param.scopes   ? []
</script>



<style lang="less">
   .Unit .Param {
      pre {
         display: inline-block;
         font-family: "Monaco";
      }
   }
</style>