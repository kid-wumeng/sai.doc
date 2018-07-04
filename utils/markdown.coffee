marked = require('marked')
Prism  = require('prismjs')



marked.setOptions({

   gfm:       true
   breaks:    true
   xhtml:     true
   headerIds: false

   highlight: (code, lang) ->
      if lang = Prism.languages[lang]
         return Prism.highlight(code, lang)
      else
         return code
})



module.exports = markdown = ( text = '' ) => marked( text )