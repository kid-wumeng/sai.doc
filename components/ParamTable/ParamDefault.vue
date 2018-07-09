<template lang="jade">
   TextArea.ParamDefault(v-if="defaultsFormat !== ''", :text="defaultsDisplay")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'param':
            type: Object
            required: true

      computed:
         defaults:        -> @param.default
         defaultsFormat:  -> @formatValue(@defaults)
         defaultsDisplay: -> "default → _#{@defaultsFormat}_"
</script>



<style lang="less">
   .ParamTable {
      .ParamDefault {
         font-size: 14px;
         color: #A2AEBA;

         > * {
            margin-bottom: 10px;
         }

         li {
            margin-bottom: 8px;
            margin-left: 5px;
            > * {
               margin-left: -6px;
            }
         }

         em {
            font-weight: 500;
            color: #273340;
         }
      }
   }
</style>