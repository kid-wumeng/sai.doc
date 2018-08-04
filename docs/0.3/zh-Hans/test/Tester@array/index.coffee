module.exports =


   name: 'Tester@array'


   desc: """
      ```js
      sai.test(['a', 1, true]).array()  // pass
      ```
   """


   signs: [{
      name: '@array( [error] )'
      desc: '是否为 Array ？'
      more: """
         使用 [sai.isArray](/isArray) 进行判定
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