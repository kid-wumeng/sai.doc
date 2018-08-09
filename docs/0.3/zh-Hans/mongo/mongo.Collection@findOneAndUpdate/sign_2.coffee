module.exports =

   async: true
   name: '@findOneAndUpdate( query, modifier )'
   desc: '更新文档，依据 Query，返回更新后的文档'

   params: [
      require('../_params/query')
      require('../_params/modifier')
   ]

   return:
      name: 'doc'
      type: 'object'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]