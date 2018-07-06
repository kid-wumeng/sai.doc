module.exports =


   name: 'push'


   signs: [{
      name: 'push(array, itemOrArrays...)'
      desc: '向 array 的末尾追加 item'
      more: """
         * 本函数是 Array.prototype.push() 的拓展
         * 可一次追加多个 item / Array
         * 若追加 Array，会自动拆出 item（ 类似 [sai.concat](/concat) ）
         * *会改变原始 Array*
      """

      params: [{
         name: 'array'
         type: 'Array'
         desc: '目标数组'
      },{
         name: 'itemOrArrays...'
         type: '* | Array'
         desc: '要添加的 item 或 array'
      }]

      return:
         name: 'length'
         type: 'number'
         desc: '添加后，array 的长度'

      throws: [{
         name: 'INVALID_TYPE'
         desc: 'array 类型不正确'
      }]
   }]


   detail: """
      # 添加 item

      ```js
      arr = ['a', 'b']
      len = sai.push(arr, 'c', 'd')

      // arr = ['a', 'b', 'c', 'd']
      // len = 4
      ```

      # 添加 Array

      ```js
      arr = ['a', 'b']
      len = sai.push(arr, ['c', 'd'], ['e', 'f'])

      // arr = ['a', 'b', 'c', 'd', 'e', 'f']
      // len = 6
      ```

      # 混合添加

      ```js
      arr = ['a', 'b']
      len = sai.push(arr, 'c', ['d', 'e'])

      // arr = ['a', 'b', 'c', 'd', 'e']
      // len = 5
      ```

      本函数会影响目标数组，若不希望如此，可以尝试 [sai.concat](/concat)
   """