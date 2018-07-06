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
      line-height: 22px;
      text-align: justify;
      font-size: 14px;
      color: #273340;
      word-break: break-all;

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
         font-weight: 500;
         font-size: 18px;
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
            line-height: 26px;
            list-style-position: inside;
            text-indent: 0;
         }
      }

      em {
         font-weight: 600;
         font-style: normal;
         user-select: all;
      }

      strong {
         font-weight: 600;
         color: red;
         user-select: all;
      }

      a {
         font-weight: 600;
         color: #7284a8;
         text-decoration: underline;
      }

      p {
         code {
            margin: 0 4px;
            padding: 3px 6px;
            font-family: "PT Mono";
            font-size: 13px;
            color: #F92672;
            background-color: #F8F8F8;
            border-radius: 2px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
         }
      }

      pre {
         margin-bottom: 12px;
         padding-top: 9px;
         padding-bottom: 10px;
         padding-left: 17px;
         padding-right: 17px;
         text-indent: 0;
         background-color: rgba(250, 250, 250, 1);
         border-radius: 3px;

         code {
            padding: 3px;
            display: block;
            line-height: 22px;
            font-family: "Monaco";
            font-size: 13px;
            color: #A2AEBA;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
            overflow: scroll;

            .token.comment,
            .token.prolog,
            .token.doctype,
            .token.cdata {
               font-style: italic;
               color: #A2AEBA;
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
               color: #272E3D;
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

            .line-numbers .line-numbers-rows {
               border-right-color: #ece8de;
            }

            .line-numbers-rows > span:before {
               color: #cdc4b1;
            }

            .line-highlight {
               background: rgba(45, 32, 6, 0.2);
               background: -webkit-linear-gradient(left, rgba(45, 32, 6, 0.2) 70%, rgba(45, 32, 6, 0));
               background: linear-gradient(to right, rgba(45, 32, 6, 0.2) 70%, rgba(45, 32, 6, 0));
            }
         }
      }
   }
</style>