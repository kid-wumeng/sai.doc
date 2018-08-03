module.exports =


   name: 'Tester@boolean'


   desc: """
      ```js
      sai.test(true).boolean()  // pass
      sai.test(1234).boolean()  // fail
      ```
   """


   signs: [{
      name: '@boolean( [error] )'
      desc: '是否为布尔量 ？'
      more: """
         使用 [sai.isBoolean](/isBoolean) 进行判定
         若值是必需的，请加上 [required()](/Tester@required)
      """

      params: [{
         name: 'error'
         type: '*'
         optional: true
      }]

      return:
         name: 'tester'
         type: 'sai.Tester'
         desc: '支持方法链'

      errors: [
         require('../../errors').INVALID_DATA
      ]
   }]