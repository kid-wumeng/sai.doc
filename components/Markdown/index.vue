<template lang="jade">
   .Markdown(v-if="text" v-html="html", :show-lang="showLang")
</template>



<script lang="coffee">
   module.exports =
      props:
         'text':
            type: String
            default: ''

         'showLang':
            type: Boolean
            default: false

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
               @formatPres()

         formatAs: ->
            for a in @$el.querySelectorAll('a')
                a.setAttribute('target', '_blank')

         formatTables: ->
            for table in @$el.querySelectorAll('table')
                tableWrap = document.createElement('div')
                tableWrap.classList.add('table')
                table.parentNode.replaceChild(tableWrap, table)
                tableWrap.appendChild(table)

         formatPres: ->
            for pre in @$el.querySelectorAll('pre')
                if code = pre.querySelector('code')
                   if code.classList.contains('language-js')
                      pre.setAttribute('lang-js', true)
                   if code.classList.contains('language-coffee')
                      pre.setAttribute('lang-coffee', true)
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
         color: #000;
         text-shadow: 0 0 1px rgba(0, 0, 0, 0.3);
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

      :not( pre ) code {
         margin: 0 5px;
         padding: 5px 7px;
         font-family: "Inconsolata";
         font-size: 13px;
         color: #F92672;
         background-color: #F8F8F8;
         border-radius: 2px;
         -webkit-font-smoothing: subpixel-antialiased;
      }
   }

   .Markdown[show-lang] {
      pre {
         position: relative;
      }

      pre[lang-js]::after,
      pre[lang-coffee]::after {
         position: absolute;
         right: 16px;
         top: 14px;
         font-family: "Ubuntu";
         font-weight: 600;
         font-size: 18px;
         color: #777;
      }

      pre[lang-js]::after     { content: "JS"     }
      pre[lang-coffee]::after { content: "Coffee" }
   }
</style>