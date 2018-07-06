module.exports =


   name: 'get'


   signs: [{
      name: 'get(data, path, [defaultValue])'
      desc: '获取 data[path] 的值'
      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
      },{
         name: 'defaultValue'
         type: '*'
         desc: '当取值不存在时返回，默认值：undefined'
         optional: true
      }]
      return:
         name: 'value'
         type: '*'
         desc: '取出的值'
   }]


   detail: """
      # 基本用法

      ```js
      data = {
         a: {
            b: ['item1', 'item2'],
            c: null,
            d: undefined
         }
      }

      sai.get(data, 'a.b.0')           // => 'item1'，点号语法
      sai.get(data, 'a.b[0]')          // => 'item1'，括号语法

      sai.get(data, 'a.c')             // => null
      sai.get(data, 'a.c', 'default')  // => null

      sai.get(data, 'a.d')             // => undefined
      sai.get(data, 'a.d', 'default')  // => 'default'

      sai.get(data, 'a.e')             // => undefined
      sai.get(data, 'a.e', 'default')  // => 'default'
      ```
   """