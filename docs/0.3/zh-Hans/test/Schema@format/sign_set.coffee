module.exports =

   name: '@format( name, check )'
   desc: '设置格式'

   params: [{
      name: 'name'
      type: 'string'
      desc: '格式名'
   },{
      name: 'check'
      type: 'function'
      desc: '格式验证函数'
   }]

   return:
      name: 'schema'
      type: 'sai.Schema'
      desc: 'this - 支持方法链'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]