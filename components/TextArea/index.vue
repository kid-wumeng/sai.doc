<template lang="jade">
   Markdown.TextArea(:text="text", :show-lang="showLang")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Markdown': require('~/components/Markdown').default

      props:
         'text':
            type: String
            default: ''

         'showLang':
            type: Boolean
            default: false
</script>



<style lang="less">
   .TextArea {
      line-height: 22px;
      font-size: 13px;
      color: #273340;

      h1, h2, h3, h4, h5, h6 { margin-bottom: 28px }
      p                      { margin-bottom: 12px }
      blockquote             { margin-bottom: 12px }
      ul                     { margin-bottom: 12px }
      ol                     { margin-bottom: 12px }
      .Table                 { margin-bottom: 12px }
      *:last-child           { margin-bottom:  0px }

      h1, h2, h3, h4, h5, h6 {
         font-weight: 600;
         font-size: 19px;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
         &:not(:first-child) {
            margin-top: 80px;
         }
      }

      blockquote {
         padding: 0.8em 1.1em;
         color: #A2AEBA;
         border: 1px dashed #A2AEBA;
      }

      ul, ol {
         li {
            &::before {
               margin-right: 12px !important;
               width: 4px !important;
               height: 4px !important;
            }
         }
         li:not(:last-child) {
            margin-bottom: 6px;
         }
      }

      .table {
         display: inline-block;
         border: 1px dashed lighten(#A2AEBA, 22%);

         > table {
            width: 100%;
            table-layout: auto;
            border-collapse: collapse;
            tr {
               > * {
                  border: 1px dashed lighten(#A2AEBA, 22%);
               }
               > *:first-child { border-left:  none }
               > *:last-child  { border-right: none }
            }
            tr:first-child > *  { border-top:    none }
            tr:last-child  > td { border-bottom: none }
         }
      }

      em {
         font-weight: 500 !important;
      }

      :not( pre ) {
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
         padding: 20px 28px;
         text-indent: 0;
         background-color: rgba(251, 251, 251, 1);
         border-radius: 2px;

         code {
            display: block;
            line-height: 21px;
            font-family: "Inconsolata";
            font-size: 14px;
            color: #A2AEBA;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
            overflow: scroll;

            .token.comment,
            .token.prolog,
            .token.doctype,
            .token.cdata {
               font-size: 13px;
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