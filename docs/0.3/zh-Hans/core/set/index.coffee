module.exports =


   name: 'set'


   desc: """
      ```js
      sai.set(data, 'a.b.c[1]', value)
      ```
   """


   signs: [{
      name: 'set( data, path, value )'
      desc: '设置 data 中路径为 path 的属性值'

      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
         desc: '*若对应属性不存在，会一路创建*'
      },{
         name: 'value'
         type: '*'
         desc: '期望设置的值'
      }]
   }]


   more: """
      # 基本用法

      ```js
      data = {
         a: {
            b: ['item1', 'item2']
         }
      }

      sai.set(data, 'a.b.0',  'kid')  // 点号语法
      sai.set(data, 'a.b[0]', 'kid')  // 括号语法
      sai.set(data, 'a.c.d',  'sai')

      // data = {
      //    a: {
      //       b: ['kid', 'item2'],
      //       c: {
      //          d: 'sai'
      //       }
      //    }
      // }
      ```
   """