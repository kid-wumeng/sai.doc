module.exports =


   name: 'pushEnd'


   signs: [{
      name: 'pushEnd(array, itemOrArrays...)'
      desc: '向 array 的末尾添加 item 或 array'

      params: [{
         name: 'array'
         type: '*[]'
         desc: '目标数组'
      },{
         name: 'itemOrArrays...'
         type: '* | *[]'
         desc: '期望添加的 item 或 array'
      }]

      return:
         name: 'length'
         type: 'number'
         desc: '添加后 array 的长度'

      throws: [{
         name: 'INVALID_TYPE'
         desc: 'array 类型不正确'
      }]
   }]


   detail: """
      # 添加 item

      ```js
      array = ['a', 'b']
      count = sai.pushEnd(array, 'c', 'd')

      // array = ['a', 'b', 'c', 'd']
      // count = 4
      ```

      # 添加 array

      ```js
      array = ['a', 'b']
      count = sai.pushEnd(array, ['c', 'd'], ['e', 'f'])

      // array = ['a', 'b', 'c', 'd', 'e', 'f']
      // count = 6
      ```

      # 混合添加

      ```js
      array = ['a', 'b']
      count = sai.pushEnd(array, 'c', ['d', 'e'])

      // array = ['a', 'b', 'c', 'd', 'e']
      // count = 5
      ```

      本函数会影响目标数组，若不希望如此，可以尝试 [sai.concat](/concat)
   """