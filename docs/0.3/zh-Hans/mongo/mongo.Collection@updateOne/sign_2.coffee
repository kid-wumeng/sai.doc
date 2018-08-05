module.exports =

   async: true
   name: '@updateOne( query, modifier )'
   desc: '更新文档，依据 Query'

   params: [
      require('../_params/query')
      require('../_params/modifier')
   ]

   return:
      name: 'count'
      type: 'int ≥ 0'
      desc: '更新成功的条数'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]