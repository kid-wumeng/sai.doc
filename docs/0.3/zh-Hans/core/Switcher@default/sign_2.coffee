module.exports =

   name: '@default( callback )'
   desc: '默认匹配时执行的函数'

   params: [{
      name: 'callback'
      type: 'function'
      desc: 'callback(args...)'
   }]

   return:
      name: 'switcher'
      type: 'this - 支持方法链'