module.exports =

   async: true
   name: '@deleteOne( id )'
   desc: '删除文档，依据 ID'

   params: [
      require('../_params/id')
   ]

   return:
      name: 'count'
      type: 'int ≥ 0'
      desc: '删除成功的条数'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]