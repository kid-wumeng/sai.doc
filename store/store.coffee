docs            = require('~/docs')
compareVersions = require('compare-versions')


module.exports =

   state:
      docs:        docs
      vers:        []
      ver:         ''
      langs:       []
      langDefault: 'zh-Hans'
      lang:        ''
      ready:       false


   mutations:
      update: (state, route) =>

         vers        = Object.keys(state.docs).sort(compareVersions).reverse()

         verLast     = vers[0]

         verQuery    = route.query['ver']

         ver         = if vers.includes(verQuery) then verQuery else verLast

         langs       = Object.keys(state.docs[ver])

         langQuery   = route.query['lang']

         lang        = if langs.includes(langQuery) then langQuery else state.langDefault

         state.vers  = vers
         state.ver   = ver
         state.langs = langs
         state.lang  = lang
         state.ready = true