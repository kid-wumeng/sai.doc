<template lang="jade">
   .TextArea(v-html="html")
</template>



<script lang="coffee">

   module.exports =

      props:
         'text':
            type: String
            default: ''
            default: false


      computed:
         html: -> utils.markdown(@text.trim())


      mounted: ->
         @format()


      updated: ->
         @format()


      methods:
         format: ->
            @formatAs()

         formatAs: ->
            as = @$el.querySelectorAll('a')

            for a in as
                a.setAttribute('target', '_blank')
</script>



<style lang="less">
   .TextArea {
      line-height: 23px;
      text-align: justify;
      font-size: 14px;
      color: #273340;
      word-break: break-all;

      > h1,
      > h2,
      > h3,
      > h4,
      > h5,
      > h6           { margin-bottom: 10px }
      > p            { margin-bottom: 6px }
      > blockquote   { margin-bottom: 6px }
      > ul           { margin-bottom: 6px }
      > ol           { margin-bottom: 6px }
      > *:last-child { margin-bottom: 0 !important }

      > h1,
      > h2,
      > h3,
      > h4,
      > h5,
      > h6 {
         font-weight: 600;
         font-size: 24px;
         &:not(:first-child) {
            margin-top: 40px;
         }
      }

      > blockquote {
         padding: 0.8em 1.1em;
         color: #A2AEBA;
         border: 1px dashed #A2AEBA;
      }

      > ul,
      > ol {
         margin-left: 1.5em;
      }

      strong {
         font-weight: 600;
         color: red;
      }

      em {
         font-weight: 600;
         font-style: normal;
      }

      a {
         font-weight: 600;
         color: #3A97FC;
         &:hover{
          text-decoration: underline;
         }
      }
   }
</style>