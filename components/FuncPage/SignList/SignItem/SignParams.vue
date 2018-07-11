<template lang="jade">
   .SignParams(v-if="params")
      APITable(v-for="(group, i) in groups", :title="group.title", :apis="group.apis", :key="i")
</template>



<script lang="coffee">
   module.exports =
      components:
         'APITable': require('~/components/APITable').default

      props:
         'sign':
            type: Object
            required: true

      computed:
         params: -> @sign.params ? []

         groups: ->
            groups = [{
               title: @$store.state.doc?.terms?.params ? 'params'
               apis:  @params
            }]

            for param in @params
               if param.children
                  groups.push({
                     title: param.name
                     apis:  param.children
                  })

            return groups
</script>



<style lang="less">
   .FuncPage {
      .SignParams {
         .APITable:not(:last-child) {
            margin-bottom: 30px;
         }
      }
   }
</style>