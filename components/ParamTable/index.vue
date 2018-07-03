<template lang="jade">
   .ParamTable(v-if="show")
      Param(v-for="(param, i) in params", :key="i", :param="param")
</template>



<script lang="coffee">
   module.exports =

      components:
         'Param': require('./Param').default

      props:
         'params':
            type: Array
            default: -> []

      computed:
         show: -> @params.length > 0

      mounted: ->
         @setParamWidth()

      methods:
         setParamWidth: ->

            max   = 0
            lefts = []

            for { $el } in @$children

                left = $el.querySelector('.Param > .left')

                if left
                   lefts.push( left )

                   if max < left.offsetWidth
                      max = left.offsetWidth

            for left in lefts
                left.style.width = max + 'px'
</script>



<style lang="less">
   .ParamTable {
      width: 480px;
      border: 1px solid lighten(#A2AEBA, 20%);
      border-radius: 2px;
      box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
      overflow: hidden;

      .Param {
         border-bottom: 1px solid lighten(#A2AEBA, 26%);
         &:last-child {
            border-bottom: none;
         }
      }
   }
</style>