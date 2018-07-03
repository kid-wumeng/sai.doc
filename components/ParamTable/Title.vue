<template lang="jade">
   .Title(v-if="title")
      hr.left(ref="left")
      hr.right(ref="right")
      span(ref="text") {{ title.toUpperCase() }}
</template>



<script lang="coffee">
   module.exports =
      props:
         'title':
            type: String
            default: ''

      mounted: ->
         if @title
            @setHrWidth()

      methods:
         setHrWidth: ->

            rootWidth = @$el.offsetWidth
            textWidth = @$refs.text.offsetWidth

            hrWidth = (rootWidth - textWidth) / 2 - 12

            @$refs.left.style.width  = hrWidth + 'px'
            @$refs.right.style.width = hrWidth + 'px'
</script>



<style lang="less" scoped>
   .Title {
      position: absolute;
      top: -20px;
      width: 100%;
      height: 40px;
      line-height: 40px;
      text-align: center;
      font-weight: 500;
      font-size: 15px;
      color: lighten(#A2AEBA, 18%);

      hr {
         position: absolute;
         top: 20px;
         width: 100%;
         border: none;
         border-top: 1px solid lighten(#A2AEBA, 26%);
      }

      hr.left  { left:  0 }
      hr.right { right: 0 }
   }
</style>