<template lang="jade">
   .Param
      .left
         .name {{ displayName }}
         .type {{ displayType }}
      TextArea.right(v-if="desc", :text="desc")
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
               return "[#{@name}]"

         displayType: ->
            if @defaults
               return "#{@type}, default is #{utils.formatData(@defaults)}"
            else
               return "#{@type}"
</script>



<style lang="less">

   @padding: 20px;

   .ParamTable {
      .Param {
         display: flex;

         > .left,
         > .right {
            padding: @padding;
            line-height: 21px;

            > * {
               margin-bottom: 5px;
               &:last-child {
                  margin-bottom: 0;
               }
            }
         }

         > .left {
            max-width: 65%;
            text-align: right;

            > .name {
               font-size: 14px;
               color: #273340;
               word-break: break-all;
            }

            > .type {
               font-family: "Ubuntu Mono";
               font-size: 14px;
               color: #9CA4AC;
               word-break: break-all;
            }
         }
      }
   }
</style>