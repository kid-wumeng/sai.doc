module.exports =


   name: 'Tester@date'


   desc: """
      ```js
      sai.test(new Date).date()  // pass
      ```
   """


   signs: [{
      name: '@date( [error] )'
      desc: '是否为 Date 对象 ？'
      more: """
         使用 [sai.isDate](/isDate) 进行判定
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