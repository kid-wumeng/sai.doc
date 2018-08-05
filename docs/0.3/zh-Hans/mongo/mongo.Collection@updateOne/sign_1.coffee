module.exports =

   async: true
   name: '@updateOne( id, modifier )'
   desc: '更新文档，依据 ID'

   params: [
      require('../_params/id')
      require('../_params/modifier')
   ]

   return:
      name: 'count'
      type: 'int ≥ 0'
      desc: '更新成功的条数'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]