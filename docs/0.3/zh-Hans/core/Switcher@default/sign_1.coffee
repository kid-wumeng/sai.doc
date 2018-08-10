module.exports =

   name: '@default( value )'
   desc: '默认匹配时返回的值'

   params: [{
      name: 'value'
      type: '*'
   }]

   return:
      name: 'switcher'
      type: 'this - 支持方法链'