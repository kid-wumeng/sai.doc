module.exports =


   name: 'first'


   signs: [{
      name: 'first(array)'
      desc: '获取 array 的第一个 item'

      params: [{
         name: 'array'
         type: '*[]'
      }]

      return:
         name: 'first\'s item'
         type: '*'
   }]


   detail: """
      # 基本用法

      ```js
      array = ['a', 'b', 'c']

      sai.first(array)  // => 'a'
      ```
   """