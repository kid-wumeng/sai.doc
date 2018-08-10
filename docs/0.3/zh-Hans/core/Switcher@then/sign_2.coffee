module.exports =

   name: '@then( callback )'
   desc: '设置本条 case 匹配成功时执行的函数'

   params: [{
      name: 'callback'
      type: 'function'
      desc: 'callback(args...)'
   }]

   return:
      name: 'switcher'
      type: 'this - 支持方法链'