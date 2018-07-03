<template lang="jade">
   .Func
      .name {{ name }}
      TextArea.desc(:text="desc")
      Sign(v-for="(sign, i) in signs", :key="i", :sign="sign")
</template>



<script lang="coffee">
   module.exports =

      components:
         'TextArea': require('~/components/TextArea').default
         'Sign':     require('~/components/Sign').default

      props:
         'func':
            type: Object
            required: true

      computed:
         name:  -> @func.name  ? 'func-name ???'
         desc:  -> @func.desc  ? ''
         signs: -> @func.signs ? []
</script>



<style lang="less">
   .Func {
      overflow: scroll;

      > * {
         margin-bottom: 40px;
      }
   }
</style>