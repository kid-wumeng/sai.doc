<template lang="jade">
   TextArea.ParamRequired(v-if="param.required", text="*required*")
</template>



<script lang="coffee">
   module.exports =
      components:
         'TextArea': require('~/components/TextArea').default

      props:
         'param':
            type: Object
            required: true
</script>



<style lang="less">
   .ParamTable {
      .ParamRequired {
         font-size: 14px;

         em {
            font-weight: 500;
            color: #273340;
         }
      }
   }
</style>