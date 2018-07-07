module.exports =


   name: 'isObject'


   desc: """
      ```js
      sai.isObject({})
      sai.isObject(new Date)
      ```
   """


   signs: [{
      name: 'isObject(value)'
      desc: '是否为对象 ？'

      params: [{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      ```js
      sai.isObject({})                   // => true
      sai.isObject(new Object)           // => true
      sai.isObject(Object.create({}))    // => true
      sai.isObject(Object.create(null))  // => true
      sai.isObject(Object)               // => true
      sai.isObject([])                   // => true
      sai.isObject(()=>{})               // => true
      sai.isObject(class{})              // => true
      sai.isObject(/^sai$/g)             // => true
      sai.isObject(new Date)             // => true
      sai.isObject(new Boolean(true))    // => true
      sai.isObject(new Number(1))        // => true
      sai.isObject(new String('sai'))    // => true

      sai.isObject(true)                 // => false
      sai.isObject(1)                    // => false
      sai.isObject('sai')                // => false
      sai.isObject(null)                 // => false
      sai.isObject(undefined)            // => false
      ```
   """