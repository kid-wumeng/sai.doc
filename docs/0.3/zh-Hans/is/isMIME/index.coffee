module.exports =


   name: 'isMIME'


   desc: """
      ```js
      sai.isMIME(file, 'image/png')
      ```
   """


   signs: [{
      name: 'isMIME( value, mime )'
      desc: '是否为 mime 类型的 Buffer 对象 ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望检测的值'
      },{
         name: 'mime'
         type: 'string'
         desc: """
            number - 最小值
            string - 最小长度
            buffer - 最小长度
         """
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]