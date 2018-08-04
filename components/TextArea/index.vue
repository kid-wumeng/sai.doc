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
         font-size: 19px;
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

      pre {
         padding: 38px 42px;
         text-indent: 0;
         background: #1D262F;
         overflow: scroll;
         code {
            display: block;
            line-height: 23px;
            font-family: "Monaco";
            font-size: 13px;
            color: #FFF;
            letter-spacing: 0.2px;
            -webkit-font-smoothing: subpixel-antialiased;
         }
      }


       // Duotone Sea ( https://github.com/PrismJS/prism-themes/blob/master/themes/prism-duotone-sea.css )

      .token.comment,
      .token.prolog,
      .token.doctype,
      .token.cdata {
         color: #4a5f78;
      }

      .token.punctuation {
         color: #4a5f78;
      }

      .token.namespace {
         opacity: .7;
      }

      .token.tag,
      .token.operator,
      .token.number {
         color: #0aa370;
      }

      .token.property,
      .token.function {
         color: #57718e;
      }

      .token.tag-id,
      .token.selector,
      .token.atrule-id {
         color: #ebf4ff;
      }

      code.language-javascript,
      .token.attr-name {
         color: #7eb6f6;
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
         color: #47ebb4;
      }

      .token.placeholder,
      .token.variable {
         color: #47ebb4;
      }

      .token.deleted {
         text-decoration: line-through;
      }

      .token.inserted {
         border-bottom: 1px dotted #ebf4ff;
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
         color: #7eb6f6;
      }

      .token.entity {
         cursor: help;
      }

      pre > code.highlight {
         outline: .4em solid #34659d;
         outline-offset: .4em;
      }

      .line-numbers .line-numbers-rows {
         border-right-color: #1f2932;
      }

      .line-numbers-rows > span:before {
         color: #2c3847;
      }

      .line-highlight {
         background: rgba(10, 163, 112, 0.2);
         background: -webkit-linear-gradient(left, rgba(10, 163, 112, 0.2) 70%, rgba(10, 163, 112, 0));
         background: linear-gradient(to right, rgba(10, 163, 112, 0.2) 70%, rgba(10, 163, 112, 0));
      }
   }
</style>