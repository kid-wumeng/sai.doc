<template lang="jade">
   .TextArea(v-if="text" v-html="html")
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

         formatAs: ->
            as = @$el.querySelectorAll('a')

            for a in as
                a.setAttribute('target', '_blank')
</script>



<style lang="less">
   .TextArea {
      line-height: 25px;
      font-size: 15px;
      color: #273340;

      > h1,
      > h2,
      > h3,
      > h4,
      > h5,
      > h6           { margin-bottom: 24px }
      > p            { margin-bottom: 14px }
      > blockquote   { margin-bottom: 14px }
      > ul           { margin-bottom: 14px }
      > ol           { margin-bottom: 14px }
      > *:last-child { margin-bottom: 0 !important }

      > h1,
      > h2,
      > h3,
      > h4,
      > h5,
      > h6 {
         font-weight: 600;
         font-size: 20px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);

         &:not(:first-child) {
            margin-top: 80px;
         }
      }

      > blockquote {
         padding: 0.8em 1.1em;
         color: #A2AEBA;
         border: 1px dashed #A2AEBA;
      }

      > ul,
      > ol {
         margin-top: 6px;
         margin-left: 2.4em;
         li {
            line-height: 19px;
            list-style-position: inside;
            text-indent: 0;
            margin-bottom: 16px;

            &:last-child {
               margin-bottom: 0 !important;
            }
         }
      }

      em {
         font-weight: 600;
         font-style: normal;
         text-shadow: 0 0 2px rgba(0, 0, 0, 0.3);
         user-select: all;
      }

      strong {
         font-weight: 600;
         color: red;
         user-select: all;
      }

      a {
         font-weight: 500;
         color: lighten(#2f54eb, 10%);
         text-decoration: underline;
      }

      :not(pre) {
         code {
            margin: 0 4px;
            font-family: "Ubuntu";
            color: #728fcb;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
            user-select: all;
         }
      }

      pre {
         margin-bottom: 12px;
         padding: 16px 20px;
         text-indent: 0;
         background-color: rgba(250, 250, 250, 1);
         border-radius: 3px;

         code {
            padding: 3px;
            display: block;
            line-height: 23px;
            font-family: "Monaco";
            font-size: 13px;
            color: #A2AEBA;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
            overflow: scroll;

            .token.comment,
            .token.prolog,
            .token.doctype,
            .token.cdata {
               color: #b6ad9a;
            }

            .token.punctuation {
               color: #b6ad9a;
            }

            .token.namespace {
               opacity: .7;
            }

            .token.tag,
            .token.operator,
            .token.number {
               color: #063289;
            }

            .token.property,
            .token.function {
               font-weight: 600;
               color: #445669;
            }

            .token.tag-id,
            .token.selector,
            .token.atrule-id {
               color: #2d2006;
            }

            code.language-javascript,
            .token.attr-name {
               color: #896724;
            }

            code.language-css,
            code.language-scss,
            .token.boolean,
            .token.string,
            .token.entity,
            .token.url,
            .language-css .token.string,
            .language-scss .token.string,
            .style .token.string,
            .token.attr-value,
            .token.keyword,
            .token.control,
            .token.directive,
            .token.unit,
            .token.statement,
            .token.regex,
            .token.atrule {
               color: #728fcb;
            }

            .token.placeholder,
            .token.variable {
               color: #93abdc;
            }

            .token.deleted {
               text-decoration: line-through;
            }

            .token.inserted {
               border-bottom: 1px dotted #2d2006;
               text-decoration: none;
            }

            .token.italic {
               font-style: italic;
            }

            .token.important,
            .token.bold {
               font-weight: bold;
            }

            .token.important {
               color: #896724;
            }

            .token.entity {
               cursor: help;
            }

            pre > code.highlight {
               outline: .4em solid #896724;
               outline-offset: .4em;
            }
         }
      }
   }
</style>