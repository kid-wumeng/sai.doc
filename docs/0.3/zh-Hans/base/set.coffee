module.exports =


   name: 'set'


   signs: [{
      name: 'set(data, path, value)'
      desc: '设置 data 中路径为 path 的属性值'
      params: [{
         name: 'data'
         type: 'object'
      },{
         name: 'path'
         type: 'string'
         desc: '*若对应属性不存在，则会一路创建*'
      },{
         name: 'value'
         type: '*'
         desc: '希望设置的值'
      }]
      throws: [{
         name: 'INVALID_TYPE'
         desc: 'data 或 path 类型不正确'
      }]
   }]


   detail: """
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