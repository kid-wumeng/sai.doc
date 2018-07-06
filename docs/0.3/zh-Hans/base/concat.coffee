module.exports =


   name: 'concat'


   signs: [{
      name: 'concat(itemOrArrays...)'
      desc: '将多个 item 或 array 合并成一个 array'

      params: [{
         name: 'itemOrArrays...'
         type: '* | *[]'
         desc: '期望合并在一起的 item 或 array'
      }]

      return:
         name: 'array'
         type: '*[]'
         desc: '合并之后的新数组'
   }]


   detail: """
      # 合并 item

      ```js
      sai.concat('abc', 1, true, ()=>{}, {name: 'sai'})

      // =>
      // ['abc', 1, true, ()=>{}, {name: 'sai'}]
      ```

      # 合并 array

      ```js
      sai.concat([1, 2], ['a', 'b'])

      // =>
      // [1, 2, 'a', 'b']
      ```

      # 同时合并 item 和 array

      ```js
      sai.concat([1, 2], 'a', [3, 4], {name: 'sai'})

      // =>
      // [1, 2, 'a', 3, 4, {name: 'sai'}]
      ```

      # 注意！本函数不会忽略空值

      ```js
      sai.concat([0, null], undefined, [''], NaN)

      // =>
      // [0, null, undefined, '', NaN]
      ```
   """