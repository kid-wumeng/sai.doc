marked = require('marked')
Prism  = require('prismjs')
require('prismjs/components/prism-coffeescript')



marked.setOptions({

   gfm:       true
   breaks:    true
   xhtml:     true
   headerIds: false

   highlight: (code, lang) ->

      if lang is 'coffee'
         lang = 'coffeescript'

      if lang = Prism.languages[lang]
         return Prism.highlight(code, lang)
      else
         return code
})



module.exports = markdown = ( text = '' ) => marked( text )