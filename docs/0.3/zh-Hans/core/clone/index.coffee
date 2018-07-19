module.exports =


   name: 'clone'


   desc: """
      ```js
      clonedData = sai.clone(data)
      ```
   """


   signs: [{
      name: 'clone( data )'
      desc: '*深度克隆* data'

      params: [{
         name: 'data'
         type: '*'
         desc: '原始数据'
      }]

      return:
         name: 'clonedData'
         type: '*'
         desc: '克隆出的数据'
   }]


   more: """
      # 基本类型的克隆与赋值等价

      ```js
      sai.clone(undefined)  // => undefined
      sai.clone(null)       // => null
      sai.clone(true)       // => true
      sai.clone(1)          // => 1
      sai.clone('abc')      // => 'abc'
      ```

      # 克隆对象，递归拷贝所有可枚举的后代

      ```js
      data = {
         apple: {
            founder: 'Steve Jobs',
            products: ['MacBook', 'iPhone', 'iPad']
         }
      }

      clonedData = sai.clone(data)

      // clonedData = {
      //    apple: {
      //       founder: 'Steve Jobs',
      //       products: ['MacBook', 'iPhone', 'iPad']
      //    }
      // }

      console.log(clonedData                === data)                 // => false
      console.log(clonedData.apple          === data.apple)           // => false
      console.log(clonedData.apple.products === data.apple.products)  // => false
      ```

      # 克隆 Array-like 同理

      ```js
      items = [{name: 'sai'}, {name: 'kid'}]

      clonedItems = sai.clone(items)
      // => [{name: 'sai'}, {name: 'kid'}]

      console.log(clonedItems[0] === items[0])
      // => false
      ```

      # 遇见无法克隆的东西，会返回空对象

      ```js
      sai.clone(()=>{})       // => {}
      sai.clone(new Error)    // => {}
      sai.clone(new WeakSet)  // => {}
      sai.clone(new WeakMap)  // => {}
      ```
   """