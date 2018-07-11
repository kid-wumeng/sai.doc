<template lang="jade">
   .Markdown(v-if="text" v-html="html")
</template>



<script lang="coffee">
   module.exports =
      props:
         'text':
            type: String
            default: ''

      computed:
         html: -> @markdown(@text.trim())

      mounted: ->
         @format()

      updated: ->
         @format()

      methods:
         format: ->
            if @text
               @formatAs()
               @formatTables()

         formatAs: ->
            for a in @$el.querySelectorAll('a')
                a.setAttribute('target', '_blank')

         formatTables: ->
            for table in @$el.querySelectorAll('table')
                tableWrap = document.createElement('div')
                tableWrap.classList.add('table')
                table.parentNode.replaceChild(tableWrap, table)
                tableWrap.appendChild(table)
</script>



<style lang="less">
   .Markdown {
      ul, ol {
         li {
            list-style: none;
            &::before {
               content: "";
               margin-right: 7px;
               display: inline-block;
               width: 3px;
               height: 1px;
               vertical-align: middle;
               background-color: currentColor;
               overflow: hidden;
            }
         }
      }

      em {
         font-weight: 500;
         font-style: normal;
         text-shadow: 0 0 2px rgba(0, 0, 0, 0.4);
         user-select: all;
      }

      strong {
         font-weight: 500;
         color: #F62459;
         user-select: all;
      }

      a {
         font-family: "Futura";
         font-weight: 500;
         color: #2f54eb;
         text-decoration: underline;
      }
   }
</style>