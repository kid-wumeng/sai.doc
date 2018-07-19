module.exports =


   name: 'concat'


   desc: """
      ```js
      sai.concat('abc', [1, 2], null, [true, 3])  // => ['abc', 1, 2, null, true, 3]
      ```
   """


   signs: [{
      name: 'concat( itemOrArrays... )'
      desc: '将多个 item 或 Array-like 合并成一个 Array'

      params: [{
         name: 'itemOrArrays...'
         type: '*'
         desc: '期望合并在一起的 item 或 Array-like'
      }]

      return:
         name: 'array'
         type: 'Array'
         desc: '合并之后的新数组'
   }]


   more: """
      # 合并 item

      ```js
      sai.concat(true, 1, 'abc')

      // =>
      // [true, 1, 'abc']
      ```

      # 合并 Array-like

      ```js
      sai.concat([1, 'a'], [2, 'b'])

      // =>
      // [1, 'a', 2, 'b']
      ```

      # 同时合并 item 和 Array-like

      ```js
      sai.concat([1, 'a'], 2, 'b')

      // =>
      // [1, 'a', 2, 'b']
      ```

      # 复杂一些的例子

      ```js
      function abc(){
         return sai.concat({a: 1}, arguments)
      }

      abc({b: 2}, {c: 3})

      // =>
      // [{a: 1}, {b: 2}, {c: 3}]
      ```

      # PS.1 字符串会当作 item 而非 Array-like 处理

      ```js
      sai.concat(123, 'abc')

      // =>
      // [123, 'abc']
      ```

      # PS.2 不会忽略空值

      ```js
      sai.concat([0, null], undefined, [''], NaN)

      // =>
      // [0, null, undefined, '', NaN]
      ```
   """