<template lang="jade">
   .Param
      .left
         .name {{ displayName }}
         .type {{ type }}
      TextArea.right(:text="desc")
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
         name:     -> @param.name     ? 'param-name ???'
         type:     -> @param.type     ? 'param-type ???'
         desc:     -> @param.desc     ? ''
         required: -> @param.required ? false
         defaults: -> @param.default  ? undefined

         displayName: ->
            if @required
               return "#{@name}"
            else
               return "[ #{@name} ]"
</script>



<style lang="less">

   @padding: 20px;

   .ParamTable {
      .Param {
         display: flex;

         > .left,
         > .right {
            padding: @padding;
            line-height: 22px;
         }

         > .left {
            flex: none;
            width: 30%;

            > .name {
               font-size: 14px;
               color: #273340;
               word-break: break-all;
            }

            > .type {
               margin-top: 4px;
               font-size: 14px;
               color: #A2AEBA;
               word-break: break-all;
            }
         }

         > .right {
            flex: auto;
         }
      }
   }
</style>