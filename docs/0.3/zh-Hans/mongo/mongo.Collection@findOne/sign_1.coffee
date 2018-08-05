module.exports =

   async: true
   name: '@findOne( id, options )'
   desc: '查找文档，依据 ID'

   params: [
      require('../_params/id')
      require('../_params/queryOptions')([
         'pick'
         'omit'
         'hide'
         'rawOptions'
      ], 'http://mongodb.github.io/node-mongodb-native/3.1/api/Collection.html#findOne')
   ]

   return:
      require('../_return/doc')

   errors: [
      require('../../errors').INVALID_PARAMS
   ]