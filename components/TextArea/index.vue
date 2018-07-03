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
         html: -> utils.markdown(@text.trim().replace(/\n{1}/g, '\n\n'))


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
         li {
            list-style-position: outside;
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
         color: #3A97FC;
         &:hover{
          text-decoration: underline;
         }
      }
   }
</style>