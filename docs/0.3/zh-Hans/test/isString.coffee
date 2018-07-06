module.exports =


   name: 'isString'


   signs: [{
      name: 'isString(value)'
      desc: '是否为字符串 ？'
      params: [{
         name: 'value'
         type: '*'
         desc: '希望判定的值'
      }]
      return:
         name: 'result'
         type: 'boolean'
   }]


   detail: """
      # 基本用法

      ```js
      sai.isString('sai')              // => true
      sai.isString(new String('sai'))  // => true
      sai.isString(new Buffer('sai'))  // => false
      ```
   """