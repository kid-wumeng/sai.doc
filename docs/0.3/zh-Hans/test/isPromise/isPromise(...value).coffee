module.exports =

   name: 'isPromise(...value)'

   desc: """
      是否为 Promise 对象 ？
   """

   text: """
      ```js
      let p1 = new Promise(()=>{})
      let p2 = new Promise(()=>{})
      let pp = Promise.all([ p1, p2 ])

      sai.isPromise( p1 )  // => true
      sai.isPromise( p2 )  // => true
      sai.isPromise( pp )  // => true

      // 支持多值检测
      sai.isPromise( p1, p2, p3 )    // => true
      sai.isPromise( p1, p2, null )  // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isPromise'
      type: 'boolean'