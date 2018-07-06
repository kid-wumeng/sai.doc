module.exports =


   name: 'pop'


   signs: [{
      name: 'pop(array, [count])'
      desc: '从 array 的末尾弹出 item'
      more: """
         * 本函数是 Array.prototype.pop() 的拓展
         * 支持一次弹出多个 item
         * *会改变原始 Array*
      """

      params: [{
         name: 'array'
         type: 'Array'
      },{
         name: 'count'
         type: 'number'
         desc: '弹出几个 item ？默认值：1'
         optional: true
      }]

      return:
         name: 'item | items'
         type: '* | Array'
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
      item  = sai.pop(array)

      // array = ['a', 'b', 'c']
      // item  = 'd'
      ```

      # 弹出多个 item

      ```js
      array = ['a', 'b', 'c', 'd']
      items = sai.pop(array, 2)

      // array = ['a', 'b']
      // items = ['c', 'd']
      ```

      # array 为空时，弹出一个 item

      ```js
      array = []
      item  = sai.pop(array)

      // array = []
      // item  = undefined
      ```

      # array 为空时，弹出多个 item

      ```js
      array = []
      items = sai.pop(array, 2)

      // array = []
      // items = []
      ```
   """