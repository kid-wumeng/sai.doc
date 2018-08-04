module.exports =
   
   name: '@name( name )'
   desc: '设置本条测试用例的名字'

   more: """
      会影响异常信息的称谓
      若没有设置，则一律以 data 称呼
   """

   params: [{
      name: 'name'
      type: 'string'
   }]

   return:
      name: 'tester'
      type: 'sai.Tester'
      desc: 'this - 支持方法链'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]