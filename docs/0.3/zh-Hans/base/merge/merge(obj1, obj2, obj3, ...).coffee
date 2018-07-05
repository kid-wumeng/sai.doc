module.exports =

   name: 'merge(obj1, obj2, obj3, ...)'

   desc: """
      深度归并多个对象，返回一个新对象
   """

   intro: """
      * 顺序从左往右
      * 右边的会覆盖左边的同位置属性
      * 递归合并全部后代
      * 仅处理可枚举属性
      * 返回的是新对象，不会改变源对象
   """

   detail: """
      一个简单示例，注意`'games'`替代了`'comic'`，因为`c.likes[0]`覆盖了`a.likes[0]`：

      ```js
      let a = {
         name: 'kid',
         age: 18,
         likes: ['comic', 'music']
      }

      let b = {
         name: 'sai',
         node: true
      }

      let c = {
         likes: ['games']
      }

      sai.merge(a, b, c)

      // => {
      //    name: 'sai',
      //    age: 18,
      //    node: true,
      //    likes: ['games', 'music']
      // }
      ```

      下面这个示例，进一步展示了对数组的影响：

      ```js
      let a = {
         persons: [{ name: 'kid' }, { name: 'sai' }]
      }

      let b = {
         persons: [{ age: 18 }, { age: 24 }]
      }

      sai.merge(a, b)

      // => {
      //    persons: [
      //       { name: 'kid', age: 18 },
      //       { name: 'sai', age: 24 }
      //    ]
      // }
      ```

      可以这么理解，数组即是对象，数组的下标是一种数字化的属性名。但是要注意，如果直接 merge 数组，最终返回的是对象：

      ```js
      let a = ['a', 'b', 'c']
      let b = ['d', 'e']

      sai.merge(a, b)

      // => {
      //    '0': 'd',
      //    '1': 'e',
      //    '2': 'c'
      // }
      ```

      merge 函数功能强大，经常用于 API 参数对默认值的覆盖式合并：

      ```js
      function say( options = {} ) {
         options = sai.merge({
            message: 'hello world',
            maxAge: 3000
         }, options)

         console.log(options)
      }

      say({ message: 'hello say' })

      // => { message: 'hello say', maxAge: 3000 }
      ```
   """

   params: [{
      name: 'srcObjects...'
      type: 'object...'
      desc: '源对象，数量不限'
   }]

   return:
      name: 'newObject'
      type: 'object'
      desc: '归并后形成的新对象'