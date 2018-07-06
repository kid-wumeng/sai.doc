<template lang="jade">
   .SignTable(v-if="sign")
      ParamTable.params(v-if="params", :params="params")
      ParamTable.return(v-if="result", :params="[result]" title="return")
      ParamTable.throws(v-if="throws", :params="throws"   title="throws")
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
         params: -> @sign.params
         result: -> @sign.return
         throws: -> @sign.throws
</script>



<style lang="less">
   .FuncPage {
      .SignTable {
         border: 1px solid lighten(#A2AEBA, 18%);
         border-radius: 2px;
         box-shadow: 0 0 15px rgba(100, 100, 100, 0.12);

         .return {
            background-color: rgba(251, 251, 251, 1);
         }

         .throws {
            .ParamItem {
               .ParamName {
                  line-height: 23px;
                  font-weight: 600;
                  font-size: 13px;
                  color: lighten(red, 28%);
                  text-shadow: none;
               }
            }
         }
      }
   }
</style>