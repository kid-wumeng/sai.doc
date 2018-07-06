module.exports =


   name: 'popEnd'


   signs: [{
      name: 'popEnd(array, [count])'
      desc: '从 array 的末尾弹出 count 个 item'

      params: [{
         name: 'array'
         type: '*[]'
      },{
         name: 'count'
         type: 'number'
         desc: '弹出几个 item ？默认值：1'
         optional: true
      }]

      return:
         name: 'item | items'
         type: '* | *[]'
         desc: """
            * 若 count = 1，返回 item
            * 若 count > 1，返回 items
         """

      throws: [{
         name: 'INVALID_TYPE'
         desc: 'array 或 count 类型不正确'
      }]
   }]


   detail: """
      # 弹出一个 item

      ```js
      array = ['a', 'b', 'c', 'd']
      item  = sai.popEnd(array)

      // array = ['a', 'b', 'c']
      // item  = 'd'
      ```

      # 弹出多个 item

      ```js
      array = ['a', 'b', 'c', 'd']
      items = sai.popEnd(array, 2)

      // array = ['a', 'b']
      // items = ['c', 'd']
      ```

      # array 为空时，弹出一个 item

      ```js
      array = []
      item  = sai.popEnd(array)

      // array = []
      // item  = undefined
      ```

      # array 为空时，弹出多个 item

      ```js
      array = []
      items = sai.popEnd(array, 2)

      // array = []
      // items = []
      ```
   """