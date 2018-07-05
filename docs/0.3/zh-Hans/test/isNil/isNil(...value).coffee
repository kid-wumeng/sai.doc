module.exports =

   name: 'isNil(...value)'

   desc: """
      是否为 undefined 或 null？
   """

   text: """
      ```js
      sai.isNil(void 0)     // => true
      sai.isNil(undefined)  // => true
      sai.isNil(null)       // => true

      sai.isNil(false)      // => false
      sai.isNil(0)          // => false
      sai.isNil(NaN)        // => false
      sai.isNil('')         // => false

      // 支持多值检测
      sai.isNil(null, undefined, void 0)  // => true
      sai.isNil(null, undefined, NaN)     // => false
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'