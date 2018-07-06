module.exports =


   name: 'isPlainObject'


   signs: [{
      name: 'isPlainObject(value)'
      desc: '是否为朴素对象 ？'
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
      sai.isPlainObject({})                   // => true
      sai.isPlainObject(new Object)           // => true
      sai.isPlainObject(Object.create({}))    // => true
      sai.isPlainObject(Object.create(null))  // => true
      sai.isPlainObject(Object)               // => false
      sai.isPlainObject([])                   // => false
      sai.isPlainObject(()=>{})               // => false
      sai.isPlainObject(class{})              // => false
      sai.isPlainObject(/^sai$/g)             // => false
      sai.isObject(new Date)                  // => false
      sai.isObject(new Boolean(true))         // => false
      sai.isObject(new Number(1))             // => false
      sai.isObject(new String('sai'))         // => false

      sai.isPlainObject(true)                 // => false
      sai.isPlainObject(1)                    // => false
      sai.isPlainObject('sai')                // => false
      sai.isPlainObject(null)                 // => false
      sai.isPlainObject(undefined)            // => false
      ```
   """