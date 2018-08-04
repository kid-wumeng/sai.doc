module.exports =
   
   name: '@format( name )'
   desc: '获取格式'

   params: [{
      name: 'name'
      type: 'string'
      desc: '格式名'
   }]

   return:
      name: 'check'
      type: 'function'
      desc: '格式验证函数'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]