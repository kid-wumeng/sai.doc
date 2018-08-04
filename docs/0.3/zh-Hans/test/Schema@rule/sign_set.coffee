module.exports =

   name: '@rule( name, check )'
   desc: '设置规则'

   params: [{
      name: 'name'
      type: 'string'
      desc: '规则名'
   },{
      name: 'check'
      type: 'function'
      desc: '规则验证函数'
   }]

   return:
      name: 'schema'
      type: 'sai.Schema'
      desc: 'this - 支持方法链'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]