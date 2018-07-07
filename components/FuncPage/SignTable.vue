<template lang="jade">
   .SignTable(v-if="sign")
      ParamTable.params(v-if="params", :params="params")
      ParamTable.return(v-if="result", :params="[result]" title="return")
      ParamTable.errors(v-if="errors", :params="errors"   title="errors")
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
         errors: -> @sign.errors
</script>



<style lang="less">
   .FuncPage {
      .SignTable {
         border: 1px solid lighten(#A2AEBA, 18%);
         border-radius: 2px;
         box-shadow: 0 0 15px rgba(100, 100, 100, 0.12);

         > .ParamTable {
            &:first-child {
               .ParamItem:first-child {
                  border-top: none;
               }
            }
            &:last-child {
               margin-bottom: 0;
            }
         }

         .errors {
            .ParamItem {
               .ParamName {
                  line-height: 22px;
                  font-weight: 600;
                  font-size: 14px;
                  color: #FFA631;
                  text-shadow: none;
                  position: relative;
                  top: 1px;
               }
            }
         }
      }
   }
</style>