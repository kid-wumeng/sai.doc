module.exports =


   name: 'Tester@plainObject'


   desc: """
      ```js
      sai.test({ name: 'kid' }).plainObject()  // pass
      ```
   """


   signs: [{
      name: '@plainObject( [error] )'
      desc: '是否为朴素对象 ？ ( 以 Object 为直接原型或是无原型 )'
      more: """
         使用 [sai.isPlainObject](/isPlainObject) 进行判定
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