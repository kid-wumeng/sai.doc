module.exports =


   name: 'len'


   desc: """
      ```js
      sai.len('123')               // => 3
      sai.len([1, 2, 3])           // => 3
      sai.len({a: 1, b: 2, c: 3})  // => 3
      ```
   """


   signs: [
      require('./sign_1')
      require('./sign_2')
   ]


   more: """
      # 测量字符串长度

      ```js
      sai.len('abc')  // => 3
      ```

      指定 mode 可以更换计数方案，比如 CJK 模式将中国、日本、韩国的文字视为2个长度：

      ```js
      sai.len('中国china')         // => 7
      sai.len('中国china', 'cjk')  // => 9
      ```

      # 测量其他 Array-like 长度

      ```js
      sai.len(['a', 'b', 'c'])  // => 3
      ```

      # 测量 Set 与 Map 成员数量

      ```js
      set = new Set
      set.add('a')
      set.add('b')
      set.add('c')
      sai.len(set)  // => 3

      map = new Map
      map.set('a', 1)
      map.set('b', 2)
      map.set('c', 3)
      sai.len(map)  // => 3
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

      # 不可数的情况

      ```js
      sai.len(undefined)  // => 0
      sai.len(null)       // => 0
      sai.len(true)       // => 0
      sai.len(1)          // => 0
      sai.len(Symbol())   // => 0
      ```
   """