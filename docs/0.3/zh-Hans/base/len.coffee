module.exports =


   name: 'len'


   signs: [{
      name: 'len(data, [mode])'
      desc: '测量 data 的大小'
      more: '根据 data 类型的不同，会运用不同的策略'

      params: [{
         name: 'data'
         type: 'object | string'
         desc: """
            期望测量的数据。预期的类型：

            * Array, Array-like
            * Set, Map
            * 字符串
            * 拥有可枚举属性的对象
         """
      },{
         name: 'mode'
         type: 'string'
         desc: """
            字符串长度计算模式，默认值：*length*

            * *length* - data.length
            * *cjk* - 中日韩字符占 2 位，其余占 1 位

            *mode 仅在 data 为字符串时可用*
         """
         optional: true
      }]

      return:
         name: 'length | size'
         type: 'number'
         desc: '数据的长度、成员数量等'

      errors: [{
         name: 'INVALID_TYPE'
         desc: 'data 不是预期的类型'
      }]

   },{

      name: 'len(data, callback)'
      desc: '测量 data 的大小，由 callback 决定每个成员的大小'

      params: [{
         name: 'data'
         type: 'object / object'
         desc: """
            期望测量的数据。预期的类型：

            * Array, Array-like
            * Set, Map
            * 字符串
            * 拥有可枚举属性的对象
         """
      },{
         name: 'callback'
         type: 'function'
         desc: """
            计量器

            以下类型使用 callback(item, i)

            * Array, Array-like
            * Set, Map
            * 字符串

            其它对象使用 callback(name, value)
         """
      }]

      return:
         name: 'length | size'
         type: 'number'
         desc: '数据的长度、成员数量等'

      errors: [{
         name: 'INVALID_TYPE'
         desc: 'data 不是预期的类型'
      }]
   }]


   detail: """
      # 测量 Array 与 Array-like 长度

      ```js
      sai.len(['a', 'b', 'c'])  // => 3
      ```

      # 测量 Set 与 Map 成员数量

      ```js
      set = new Set()
      set.add('a')
      set.add('b')
      set.add('c')
      sai.len(set)  // => 3

      map = new Map()
      map.set('a')
      map.set('b')
      map.set('c')
      sai.len(map)  // => 3
      ```

      # 测量字符串长度

      ```js
      sai.len('abc')  // => 3
      ```

      指定 mode 可以更换计数方案，比如 CJK 模式将中国、日本、韩国的文字视为2个长度：

      ```js
      sai.len('中国china')         // => 7
      sai.len('中国china', 'cjk')  // => 9
      ```

      # 测量对象的成员数量

      注意，只会计算*可枚举*的*子*属性：

      ```js
      data = {
         name: 'kid',
         age: 18,
         pets: {
            name: 'mimi',
            type: 'cat'
         }
      }
      sai.len(data)    // => 3，不会计入孙代的数量


      date = new Date
      sai.len(date)    // => 0，因为 date 上的属性都是不可枚举的
      ```

      # 使用自定义的计量器

      len 的第 2 个参数可以传入一个回调函数，这个函数会在遍历每一个成员时被调用，它的返回值是当前成员应该被计算的大小。以下是一些例子：

      例1，Array 中字符类型元素占 2 位，其余占 1 位

      ```js
      sai.len([1, '2', 3], (item, i) => {
         if (sai.isString(item))
            return 2
         else
            return 1
      })

      // => 4
      ```

      例2，忽视字符串中的空白符

      ```js
      sai.len('A BC', (char, i) => { sai.isSpace(char) ? 0 : 1 })

      // => 3
      ```

      例3，统计所有水果的总价

      ```js
      fruitPrices = {
         cherry: 1.5,
         orange: 2.5,
         banana: 3
      }

      sai.len(fruitPrices, (name, value) => value)

      // => 7
      ```

      # data 为 undefined 或 null 时一律返回 0

      ```js
      sai.len(undefined, 'cjk')   // => 0
      sai.len(null, (item) => 1)  // => 0
      ```
   """