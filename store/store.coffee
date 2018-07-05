_               = require('lodash')
compareVersions = require('compare-versions')
docs            = require('~/docs')



module.exports =

   state:
      docs:        docs
      doc:         {}
      packs:       {}
      funcs:       {}
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

         packs       = getPacks(doc)

         funcs       = getFuncs(doc)

         state.doc   = doc
         state.packs = packs
         state.funcs = funcs
         state.vers  = vers
         state.ver   = ver
         state.langs = langs
         state.lang  = lang
         state.ready = true




getPacks = ( doc ) =>

   packs = {}

   for pack in doc.packs ? []

      if packs[pack.path]
         error = "包路径重复，pack: #{pack.path}"
         alert(error)
         throw new Error(error)

      else
         packs[pack.path] = pack

   return packs




getFuncs = ( doc ) =>

   funcs = {}

   for pack in doc.packs ? []

       for func in pack.items ? []

           if _.isPlainObject(func)

              func.pack = pack

              if funcs[func.name]
                 error = "方法名重复，pack: #{pack.path}，item: #{func.name}"
                 alert(error)
                 throw new Error(error)

              else
                 funcs[func.name] = func

   return funcs