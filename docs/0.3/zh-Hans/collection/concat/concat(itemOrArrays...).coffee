module.exports =

   name: 'concat(itemOrArrays...)'

   desc: """
      将多个 item 或 array 合并成一个 array
   """

   detail: """
      ```js
      // 合并多个 item
      sai.concat('abc', 1, true, ()=>{}, {name: 'sai'})
      // =>
      // ['abc', 1, true, ()=>{}, {name: 'sai'}]


      // 合并多个 array
      sai.concat([1, 2], ['a', 'b'])
      // =>
      // [1, 2, 'a', 'b']


      // 同时合并 item 和 array
      sai.concat([1, 2], 'a', [3, 4], {name: 'sai'})
      // =>
      // [1, 2, 'a', 3, 4, {name: 'sai'}]


      // 注意，本函数不会忽略空值
      sai.concat([0, null], undefined, [''], NaN)
      // =>
      // [0, null, undefined, '', NaN]
      ```
   """

   params: [{
      name: '...itemOrArray'
      type: '...*'
   }]

   return:
      name: 'array'
      type: '*[]'