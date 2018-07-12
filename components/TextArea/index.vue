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
      line-height: 23px;
      font-size: 14px;
      color: #273340;

      h1, h2, h3, h4, h5, h6 { margin-bottom: 20px }
      p                      { margin-bottom: 20px }
      blockquote             { margin-bottom: 20px }
      ul                     { margin-bottom: 20px }
      ol                     { margin-bottom: 20px }
      .Table                 { margin-bottom: 20px }
      pre                    { margin-bottom: 20px }
      *:last-child           { margin-bottom:  0px }

      h1, h2, h3, h4, h5, h6 {
         font-weight: 600;
         font-size: 18px;
         color: #111;
         text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.1);
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
            font-weight: 400;
            color: #728fcb;
            letter-spacing: 0.35px;
            text-shadow: none;
         }
      }

      pre {
         padding: 36px 44px;
         text-indent: 0;
         background: #2A2833;

         code {
            display: block;
            line-height: 23px;
            font-family: "Monaco";
            font-size: 13px;
            color: #D2CDE5 !important;
            letter-spacing: 0.15px;
            overflow: scroll;
            -webkit-font-smoothing: subpixel-antialiased;
         }
      }

       // Duotone Dark ( https://github.com/PrismJS/prism-themes/blob/master/themes/prism-duotone-dark.css )

      code[class*="language-"],
      pre[class*="language-"] {
         color: #9a86fd;
      }

      pre[class*="language-"]::-moz-selection, pre[class*="language-"] ::-moz-selection,
      code[class*="language-"]::-moz-selection, code[class*="language-"] ::-moz-selection {
         text-shadow: none;
         background: #6a51e6;
      }

      pre[class*="language-"]::selection, pre[class*="language-"] ::selection,
      code[class*="language-"]::selection, code[class*="language-"] ::selection {
         text-shadow: none;
         background: #6a51e6;
      }

      pre[class*="language-"] {
         padding: 1em;
         margin: .5em 0;
         overflow: auto;
      }

      :not(pre) > code[class*="language-"] {
         padding: .1em;
         border-radius: .3em;
      }

      .token.comment,
      .token.prolog,
      .token.doctype,
      .token.cdata {
         font-family: "Ubuntu Mono";
         font-size: 13px;
         color: #6c6783;
      }

      .token.punctuation {
         color: #6c6783;
      }

      .token.namespace {
         opacity: .7;
      }

      .token.tag,
      .token.operator,
      .token.number {
         color: #e09142;
      }

      .token.property,
      .token.function {
         color: #9a86fd;
      }

      .token.tag-id,
      .token.selector,
      .token.atrule-id {
         color: #eeebff;
      }

      code.language-javascript,
      .token.attr-name {
         color: #c4b9fe;
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
         color: #ffcc99;
      }

      .token.placeholder,
      .token.variable {
         color: #ffcc99;
      }

      .token.deleted {
         text-decoration: line-through;
      }

      .token.inserted {
         border-bottom: 1px dotted #eeebff;
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
         color: #c4b9fe;
      }

      .token.entity {
         cursor: help;
      }

      pre > code.highlight {
         outline: .4em solid #8a75f5;
         outline-offset: .4em;
      }
   }
</style>