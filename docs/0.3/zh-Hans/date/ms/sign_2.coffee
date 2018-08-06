module.exports =

   name: 'ms( string )'
   desc: '基于 ms 包封装，[API 参考](https://www.npmjs.com/package/ms)'

   params: [{
      name: 'string'
      type: 'string'
   }]

   return:
      name: 'milliSeconds'
      type: 'int'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]