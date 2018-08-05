module.exports =

   async: true
   name: '@deleteOne( query )'
   desc: '删除文档，依据 Query'

   params: [
      require('../_params/query')
   ]

   return:
      name: 'count'
      type: 'int ≥ 0'
      desc: '删除成功的条数'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]