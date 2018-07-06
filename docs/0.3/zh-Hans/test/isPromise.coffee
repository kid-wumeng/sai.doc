module.exports =


   name: 'isPromise'


   signs: [{
      name: 'isPromise(value)'
      desc: '是否为 Promise 对象 ？'
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
      p1 = new Promise(()=>{})
      p2 = new Promise(()=>{})
      pp = Promise.all([ p1, p2 ])

      sai.isPromise( p1 )  // => true
      sai.isPromise( p2 )  // => true
      sai.isPromise( pp )  // => true
      ```
   """