module.exports =

   async: true
   name: '@findOne( query, options )'
   desc: '查找文档，依据 Query'

   params: [
      require('../_params/query')
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