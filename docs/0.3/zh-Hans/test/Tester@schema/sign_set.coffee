module.exports =
   name: '@schema( schema )'
   desc: '设置本条测试的 Schema'

   params: [{
      name: 'schema'
      type: 'sai.Schema'
   }]

   return:
      name: 'tester'
      type: 'sai.Tester'
      desc: '支持方法链'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]