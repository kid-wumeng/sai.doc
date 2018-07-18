module.exports =


   name: 'index'


   desc: """
      ```js
      sai.index('abcde', 'cd')  // => 2

      array = [{a: 1}, {b: 2}, {c: 3}]
      sai.index(array, {b: 2})  // => 1
      ```
   """


   signs: [{
      name: 'index( arrayLike, item, [fromIndex] )'
      desc: '查找元素，返回索引'

      params: [{
         name: 'arrayLike'
         type: 'Array-like'
      },{
         name: 'item'
         type: '*'
      },{
         name: 'fromIndex'
         type: 'int ≥ 0'
         desc: '从多少索引开始找起 ？'
         default: 0
      }]

      return:
         name: 'index'
         type: 'int ≥ -1'
         desc: '如果找不到符合的元素，返回 -1'
   }]


   more: """
      # 字符串模式

      与 String.prototype.indexOf 完全一致：

      ```js
      sai.index('abcde', 'ab')     // => 0
      sai.index('abcde', 'cd')     // => 2
      sai.index('abcde', 'ce')     // => -1，找不到

      sai.index('ababa', 'ab')     // => 0
      sai.index('ababa', 'ab', 1)  // => 2，从 i = 1 开始找起
      ```

      # 其他 Array-like 模式

      ```js
      array = [true, 'abc', null, 'abc', [1, 2, 3]]

      sai.index(array, 'abc')      // => 1
      sai.index(array, 'abc', 2)   // => 3，从 i = 2 开始找起
      sai.index(array, [1, 2, 3])  // => 4
      sai.index(array, 123)        // => -1，找不到
      ```

      元素若是对象，采用 [sai.equal](/equal) 进行*深度比较*：

      ```js
      array = [{'a': {'b': [1]}}, 'abc']
      child =  {'a': {'b': [1]}}

      sai.index(array, child)  // => 0
      ```
   """