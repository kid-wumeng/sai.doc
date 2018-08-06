module.exports =

   name: 'ms( number )'
   desc: '基于 ms 包封装，[API 参考](https://www.npmjs.com/package/ms)'

   params: [{
      name: 'int'
      type: 'milliSeconds'
   }]

   return:
      name: 'string'
      type: 'string'

   errors: [
      require('../../errors').INVALID_PARAMS
   ]