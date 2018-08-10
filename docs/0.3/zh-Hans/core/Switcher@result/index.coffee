module.exports =


   name: 'Switcher@result'


   desc: """
      ```js
      result = sai.switch(args)
         .case(String).then((str) => str)
         .default('default')
         .result()
      ```
   """


   signs: [{
      name: '@result()'
      desc: '获取匹配的 then / default 返回的值'

      return:
         name: 'result'
         type: '*'
   }]