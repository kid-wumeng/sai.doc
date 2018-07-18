module.exports =


   name: 'merge'


   desc: """
      ```js
      data = sai.merge(data1, data2, data3)
      ```
   """


   signs: [{
      name: 'merge( objects... )'
      desc: '*深度*归并多个对象，返回归并后的新对象'
      more: """
         * 顺序从左往右
         * 右边的会覆盖左边的同位置属性
         * 递归合并*所有后代*
         * 仅处理可枚举属性
         * *返回的是新对象，不会改变源对象*
      """

      params: [{
         name: 'objects...'
         type: 'object'
         desc: '源对象，数量不限'
      }]

      return:
         name: 'newObject'
         type: 'object'
         desc: '归并之后的新对象'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]


   more: """
      # 基本用法

      ```js
      a = {
         name:    'sai',
         version: '1.0'
      }

      b = {
         version: '2.0',
         repo:    'https://github.com/kid-wumeng/sai'
      }

      sai.merge(a, b)

      /* => {
          name:    'sai',
          version: '2.0',
          repo:    'https://github.com/kid-wumeng/Sai'
      } */
      ```

      JavaScript 中 Array 也是对象，索引即是属性名，下面的例子漂亮地展示了 Array 的按位归并，`browsers[0]`先后被 firefox, chrome 覆写：

      ```js
      a = {
         browsers: ['netscape', 'ie']
      }

      b = {
         browsers: ['firefox', 'chrome', 'opera']
      }

      c = {
         browsers: ['safari']
      }

      sai.merge(a, b, c)

      // => {
      //    browsers: ['safari', 'chrome', 'opera']
      // }
      ```

      如果数组中是对象呢？下面是一个稍稍复杂的例子：

      ```js
      a = {
         persons: [{ name: 'kid' }, { name: 'sai' }]
      }

      b = {
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

      注意！你若是直接归并多个数组，最终会得到一个普通对象，因为 merge 将一切都视为对象：

      ```js
      a = ['a', 'b', 'c']
      b = ['d', 'e']

      sai.merge(a, b)

      // => {
      //    '0': 'd',
      //    '1': 'e',
      //    '2': 'c'
      // }
      ```

      merge 很强大也很实用，常被用于方法参数、配置文件、API 请求等需要归并默认值的地方，比如：

      ```js
      function error( options = {} ) {
         options = sai.merge({
            message: 'Sorry, this is an error.',
            status: 404
         }, options)

         console.log(options)
      }

      error({ status: 500 })

      // => { message: 'Sorry, this is an error.', status: 500 }
      ```
   """