module.exports =

   name: 'has(data, path)'

   desc: """
      检测 data 中路径为 path 的属性值是否存在
   """

   intro: """
      判定依据：属性值既不为 undefined 也不为 null
   """

   detail: """
      一个简单的例子：

      ```js
      data = {
         chef: null,
         menu: {
            fruits: ['apple', 'orange']
         }
      }

      sai.has(data, 'chef')                 // => false
      sai.has(data, 'menu.fruits[1]')       // => true
      sai.has(data, ['menu', 'fruits', 2])  // => false
      ```

      路径操作符可以参考 [sai.get](/get)
   """

   params: [{
      name: 'data'
      type: 'object'
      desc: '数据对象'
   },{
      name: 'path'
      type: 'string | number | array'
      desc: '路径或下标'
   }]

   return:
      name: 'hasValue'
      type: 'boolean'
      desc: '属性值是否存在'