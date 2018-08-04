module.exports =


   name: 'Tester@buffer'


   desc: """
      ```js
      sai.test(new Buffer('abc')).buffer()  // pass
      ```
   """


   signs: [{
      name: '@buffer( [error] )'
      desc: '是否为 Buffer 对象 ？'
      more: """
         使用 [sai.isBuffer](/isBuffer) 进行判定
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