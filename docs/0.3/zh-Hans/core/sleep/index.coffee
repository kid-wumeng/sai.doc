module.exports =


   name: 'sleep'


   desc: """
      ```js
      await sai.sleep(3000)
      ```
   """


   signs: [{
      async: true
      name: 'sleep( ms )'
      desc: '程序暂停执行 ms 毫秒'

      params: [{
         name: 'ms'
         type: 'number'
         desc: '睡眠多少毫秒'
      }]

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]


   more: """
      # 基本用法

      ```js
      console.log('hello')
      await sai.sleep(3000)  // 延时三秒后继续执行
      console.log('world')
      ```
   """