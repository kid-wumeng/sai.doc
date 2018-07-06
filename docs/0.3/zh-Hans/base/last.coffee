module.exports =


   name: 'last'


   signs: [{
      name: 'last(array)'
      desc: '获取 array 的最后一个元素'

      params: [{
         name: 'array'
         type: '*[]'
      }]

      return:
         name: 'item'
         type: '* | undefined'
         desc: '最后一个元素'

      throws: [{
         name: 'INVALID_TYPE'
         desc: 'array 类型不正确'
      }]
   }]


   detail: """
      ```js
      array = ['a', 'b', 'c']

      sai.last(array)  // => 'c'
      ```
   """