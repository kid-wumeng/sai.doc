_               = require('lodash')
compareVersions = require('compare-versions')
docs            = require('~/docs')



module.exports =

   state:
      docs:        docs
      doc:         {}
      units:       {}
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

         units       = getUnits(doc)

         funcs       = getFuncs(doc)

         state.doc   = doc
         state.units = units
         state.funcs = funcs
         state.vers  = vers
         state.ver   = ver
         state.langs = langs
         state.lang  = lang
         state.ready = true




getUnits = ( doc ) =>

   units = {}

   for unit in doc.units ? []

      if units[unit.path]
         error = "单元路径重复，unit: #{unit.path}"
         alert(error)
         throw new Error(error)

      else
         units[unit.path] = unit

   return units




getFuncs = ( doc ) =>

   funcs = {}

   for unit in doc.units ? []

       for func in unit.items ? []

           if _.isPlainObject(func)

              func.unit = unit

              if funcs[func.name]
                 error = "方法名重复，unit: #{unit.path}，item: #{func.name}"
                 alert(error)
                 throw new Error(error)

              else
                 funcs[func.name] = func

   return funcs