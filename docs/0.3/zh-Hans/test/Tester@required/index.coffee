module.exports =


   name: 'Tester@required'


   desc: """
      ```js
      sai.test('abc').required()      // pass
      sai.test(undefined).required()  // fail
      sai.test(null).required()       // fail
      ```
   """


   signs: [{
      name: '@required( [error] )'
      desc: '是否存在 ？'
      more: '使用 [sai.isNil](/isNil) 进行判定'

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


   more: """
      # 注意，若你不加 required，则表示这是个可选值。此时若值不存在，会跳过其他测试：

      ```js
      sai.test(null).required().string().min(3)  // fail，必需值
      sai.test(null).string().min(3)             // pass，可选值 - string() 与 min(3) 被跳过了
      ```
   """