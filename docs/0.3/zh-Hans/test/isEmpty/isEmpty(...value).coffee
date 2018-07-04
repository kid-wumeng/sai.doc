module.exports =

   name: 'isEmpty(...value)'

   desc: """
      载体为空，无任何数据 ？
   """

   text: """
      ```js
      sai.isEmpty('1')            // => false
      sai.isEmpty([1])            // => false
      sai.isEmpty({name: 'sai'})  // => false

      sai.isEmpty(void 0)         // => true
      sai.isEmpty(undefined)      // => true
      sai.isEmpty(null)           // => true
      sai.isEmpty('')             // => true
      sai.isEmpty({})             // => true
      sai.isEmpty([])             // => true
      sai.isEmpty(new Map)        // => true
      sai.isEmpty(new Set)        // => true


      // 可以检测 array-like
      sai.isEmpty(arguments)


      // 不是预期的类别，抛出异常
      sai.isEmpty(false)     // => throw error
      sai.isEmpty(0)         // => throw error
      sai.isEmpty(new Date)  // => throw error


      // 支持多值检测
      sai.isEmpty('', [ ])  // => true
      sai.isEmpty('', [0])  // => false
      sai.isEmpty('',  0 )  // => throw error
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isEmpty'
      type: 'boolean'

   throws: [{
      name: 'INVALID_TYPE'
      desc: """
         参数应该是以下类别之一：

         * nil
         * 字符串
         * 对象
         * 数组 / array-like
         * Map / Set

         除此之外的将会抛出异常
      """
   }]