module.exports =


   name: 'get'


   desc: """
      ```js
      value = sai.get(data, 'a.b.c[1]', 'defaults')
      ```
   """


   signs: [{
      name: 'get( data, path, [defaultValue] )'
      desc: '获取 data 中路径为 path 的属性值'

      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
      },{
         name: 'defaultValue'
         type: '*'
         desc: '若发现取值是 undefined，则会返回 defaultValue（ 如果设置过 ）'
         default: undefined
      }]

      return:
         name: 'value'
         type: '*'
         desc: '取出的值'

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]


   more: """
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