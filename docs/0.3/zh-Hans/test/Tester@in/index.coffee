module.exports =


   name: 'Tester@in'


   desc: """
      ```js
      sai.test(1).in(['a', 1, 'true'])  // pass
      sai.test(2).in(['a', 1, 'true'])  // fail
      ```
   """


   signs: [{
      name: '@in( enums, [error] )'
      desc: '是否属于枚举集 ？'
      more: """
         使用 [sai.contain](/contain) 进行判定
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'enums'
         type: 'Array-like'
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
   }]