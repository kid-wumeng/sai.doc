module.exports =


   name: 'isAny'


   desc: """
      ```js
      sai.isAny(undefined)  // => true
      sai.isAny('abc')      // => true
      sai.isAny(new Date)   // => true
      ```
   """


   signs: [{
      name: 'isAny( value )'
      desc: '是否为任何类型 ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]

      return:
         name: 'result'
         type: 'boolean'
         desc: '*始终返回 true*'
   }]


   more: """
      这个方法乍看上去好像没有意义，其实是为了配合 [sai.switch](/switch) 使用的，比如：

      ```js
      sai.switch(args)
         .case(sai.isAny, String).then(()=>{})  // 第一个参数可以是任何类型
      ```
   """