module.exports =

   name: 'isPlainObject(...value)'

   desc: """
      是否为朴素对象 ？
   """

   text: """
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
      sai.isPlainObject(new Date)             // => false
      sai.isPlainObject(new Number(0))        // => false
      sai.isPlainObject(new String(''))       // => false

      sai.isPlainObject(true)                 // => false
      sai.isPlainObject(1)                    // => false
      sai.isPlainObject('sai')                // => false
      sai.isPlainObject(null)                 // => false
      sai.isPlainObject(undefined)            // => false

      // 支持多值检测
      sai.isPlainObject({},  1  [])           // => true
      sai.isPlainObject({}, '1' [])           // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isPlainObject'
      type: 'boolean'