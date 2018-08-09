module.exports =

   name: 'isMIME( value, mime )'
   desc: '是否为 Buffer 对象且为 mime 类型 ？'

   params: [{
      name: 'value'
      type: '*'
      desc: '期望检测的值'
   },{
      name: 'mime'
      type: 'string'
   }]

   return:
      name: 'result'
      type: 'boolean'