module.exports =

   name: 'isObject(...value)'

   desc: """
      是否为对象 ？
   """

   text: """
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
      sai.isObject(new Number(0))        // => true
      sai.isObject(new String(''))       // => true

      sai.isObject(true)                 // => false
      sai.isObject(1)                    // => false
      sai.isObject('sai')                // => false
      sai.isObject(null)                 // => false
      sai.isObject(undefined)            // => false

      // 支持多值检测
      sai.isObject({},  1  [])           // => true
      sai.isObject({}, '1' [])           // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isObject'
      type: 'boolean'