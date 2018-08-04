module.exports =

   name: '@rule( name )'
   desc: '获取规则'

   params: [{
      name: 'name'
      type: 'string'
      desc: '规则名'
   }]

   return:
      name: 'check'
      type: 'function'
      desc: '规则验证函数'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]