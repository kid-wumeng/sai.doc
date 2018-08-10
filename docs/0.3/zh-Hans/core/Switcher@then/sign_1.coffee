module.exports =

   name: '@then( value )'
   desc: '设置本条 case 匹配成功时返回的值'

   params: [{
      name: 'value'
      type: '*'
   }]

   return:
      name: 'switcher'
      type: 'this - 支持方法链'