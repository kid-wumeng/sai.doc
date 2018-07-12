module.exports =


   name: 'isPlainObject'


   desc: """
      ```js
      sai.isPlainObject({})        // => true
      sai.isPlainObject(new Date)  // => false
      ```
   """


   signs: [{
      name: 'isPlainObject( value )'
      desc: '是否为朴素对象 ？ ( 以 Object 为直接原型或是无原型 )'

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
      sai.isPlainObject({})                   // => true
      sai.isPlainObject(new Object)           // => true
      sai.isPlainObject(Object.create(null))  // => true
      
      sai.isPlainObject(Object.create({}))    // => false
      sai.isPlainObject(Object)               // => false
      sai.isPlainObject([])                   // => false
      sai.isPlainObject(()=>{})               // => false
      sai.isPlainObject(class{})              // => false
      sai.isPlainObject(/^abc$/ig)            // => false
      sai.isObject(new Date)                  // => false
      sai.isObject(new Boolean(true))         // => false
      sai.isObject(new Number(1))             // => false
      sai.isObject(new String('abc'))         // => false

      sai.isPlainObject(undefined)            // => false
      sai.isPlainObject(null)                 // => false
      sai.isPlainObject(true)                 // => false
      sai.isPlainObject(1)                    // => false
      sai.isPlainObject('abc')                // => false
      ```
   """