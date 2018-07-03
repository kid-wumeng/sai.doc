<template lang="jade">
   .Children(v-if="show")
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
      border: 1px solid #EBEFF2;

      .Param {
         border: 1px solid #EBEFF2;
      }
   }
</style>