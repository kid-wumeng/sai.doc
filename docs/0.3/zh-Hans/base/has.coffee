module.exports =


   name: 'has'


   signs: [{
      name: 'has(data, path)'
      desc: '检测 data[path] 是否存在'
      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
      }]
      return:
         name: 'result'
         type: 'boolean'
         desc: """
            属性是否存在 ？

            判定依据：不为 undefined
         """
   }]


   detail: """
      # 基本用法

      ```js
      data = {
         a: {
            b: ['item1', 'item2'],
            c: false,
            d: null,
            e: undefined
         }
      }

      sai.has(data, 'a.b.0')   // => true，点号语法
      sai.has(data, 'a.b[0]')  // => true，括号语法

      sai.has(data, 'a.c')     // => true
      sai.has(data, 'a.d')     // => true，null 并不代表不存在

      sai.has(data, 'a.e')     // => false
      sai.has(data, 'a.f')     // => false
      ```
   """