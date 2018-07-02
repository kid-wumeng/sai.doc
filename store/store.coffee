_               = require('lodash')
compareVersions = require('compare-versions')
docs            = require('~/docs')



module.exports =

   state:
      docs:        docs
      doc:         null
      vers:        []
      ver:         ''
      langs:       []
      langDefault: 'zh-Hans'
      lang:        ''
      ready:       false


   mutations:
      update: (state, route) =>

         docs        = state.docs

         vers        = Object.keys(docs).sort(compareVersions).reverse()

         verQuery    = route.query['ver']

         verLast     = vers[0]

         ver         = if vers.includes(verQuery) then verQuery else verLast

         langs       = Object.keys(docs[ver])

         langQuery   = route.query['lang']

         langDefault = state.langDefault

         lang        = if langs.includes(langQuery) then langQuery else langDefault

         docDefault  = docs[ver][langDefault]

         doc         = docs[ver][lang] ? {}

         doc         = _.merge({}, docDefault, doc)

         state.vers  = vers
         state.ver   = ver
         state.langs = langs
         state.lang  = lang
         state.doc   = doc
         state.ready = true