module.exports =

   async: true
   name: '@findOneAndUpdate( id, modifier )'
   desc: '更新文档，依据 ID，返回更新后的文档'

   params: [
      require('../_params/id')
      require('../_params/modifier')
   ]

   return:
      name: 'doc'
      type: 'object'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]