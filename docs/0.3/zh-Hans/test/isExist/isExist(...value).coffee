module.exports =

   name: 'isExist(...value)'

   desc: """
      载体中至少有一个数据 ？
   """

   text: """
      ```js
      sai.isExist('1')            // => true
      sai.isExist([1])            // => true
      sai.isExist({name: 'sai'})  // => true

      sai.isExist(void 0)         // => false
      sai.isExist(undefined)      // => false
      sai.isExist(null)           // => false
      sai.isExist('')             // => false
      sai.isExist({})             // => false
      sai.isExist([])             // => false
      sai.isExist(new Map)        // => false
      sai.isExist(new Set)        // => false


      // 可以检测 Array-like
      sai.isExist(arguments)


      // 不是预期的类别，抛出异常
      sai.isExist(false)     // => throw error
      sai.isExist(0)         // => throw error
      sai.isExist(new Date)  // => throw error


      // 支持多值检测
      sai.isExist('0', [0])  // => true
      sai.isExist('0', [ ])  // => false
      sai.isExist('0',  0 )  // => throw error
      ```
   """

   params: [{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      name: 'isExist'
      type: 'boolean'

   throws: [{
      name: 'INVALID_TYPE'
      desc: """
         参数应该是以下类别之一：

         * nil
         * 字符串
         * 对象
         * 数组 / Array-like
         * Map / Set

         除此之外的将会抛出异常
      """
   }]