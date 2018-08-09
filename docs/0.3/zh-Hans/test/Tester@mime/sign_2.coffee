module.exports =

   name: '@mime( mimes, [error] )'
   desc: '是否为 mimes 之一的类型 ？'
   more: """
      使用 [sai.isMIME](/isMIME) 进行判定
      若值是必需的，请加上 [required()](/Tester@required)
   """

   params: [{
      name: 'mimes'
      type: 'Array-like[string]'
   },{
      name: 'error'
      type: '*'
      optional: true
   }]

   return:
      name: 'tester'
      type: 'sai.Tester'
      desc: 'this - 支持方法链'

   errors: [
      require('../../errors').INVALID_PARAMS
      require('../../errors').INVALID_DATA
   ]