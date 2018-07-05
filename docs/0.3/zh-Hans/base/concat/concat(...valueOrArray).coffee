module.exports =

   name: 'concat(...valueOrArray)'

   desc: """
      将多个元素或数组合并成一个数组
   """

   text: """
      ```js
      // 合并多个元素
      sai.concat('abc', ()=>{}, {name: 'kid'})
      // =>
      // ['abc', ()=>{}, {name: 'kid'}]


      // 合并多个数组
      sai.concat([1, 2], ['a', 'b'])
      // =>
      // [1, 2, 'a', 'b']


      // 同时合并元素和数组
      sai.concat([1, 2], 'a', [3, 4], {name: 'kid'})
      // =>
      // [1, 2, 'a', 3, 4, {name: 'kid'}]


      // 注意，本函数并不会忽略空值
      sai.concat([1, null], undefined, [''], NaN)
      // =>
      // [1, null, undefined, '', NaN]
      ```
   """

   params: [{
      name: 'class'
      type: 'function'
      desc: '类 ( 构造函数 )'
   },{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isOrNot'
      type: 'boolean'