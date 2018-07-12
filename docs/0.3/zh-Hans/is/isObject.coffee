module.exports =


   name: 'isObject'


   desc: """
      ```js
      sai.isObject({})        // => true
      sai.isObject(new Date)  // => true
      ```
   """


   signs: [{
      name: 'isObject( value )'
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
      sai.isObject(Object.create(null))  // => true
      
      sai.isObject(Object.create({}))    // => true
      sai.isObject(Object)               // => true
      sai.isObject([])                   // => true
      sai.isObject(()=>{})               // => true
      sai.isObject(class{})              // => true
      sai.isObject(/^abc$/ig)            // => true
      sai.isObject(new Date)             // => true
      sai.isObject(new Boolean(true))    // => true
      sai.isObject(new Number(1))        // => true
      sai.isObject(new String('abc'))    // => true

      sai.isObject(undefined)            // => false
      sai.isObject(null)                 // => false
      sai.isObject(true)                 // => false
      sai.isObject(1)                    // => false
      sai.isObject('abc')                // => false
      ```
   """