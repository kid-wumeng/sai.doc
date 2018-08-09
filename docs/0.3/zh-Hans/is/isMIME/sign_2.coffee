module.exports =

   name: 'isMIME( value, mimes )'
   desc: '是否为 Buffer 对象且为 mimes 之一的类型 ？'

   params: [{
      name: 'value'
      type: '*'
      desc: '期望检测的值'
   },{
      name: 'mimes'
      type: 'Array[string]'
   }]

   return:
      name: 'result'
      type: 'boolean'