module.exports =

   name: 'len(data, [mode])'

   desc: '测量 data 的大小'

   intro: """
      根据 data 类型的不同，会运用不同的策略：

      * 字符串      - length | 或由指定 mode 而得到结果
      * Array-like - length
      * Map, Set   - size
      * 对象        - 可枚举属性的数量
   """

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
      sai.len(data)  // => 3，不会计入孙代的数量


      date = new Date
      sai.len(date)  // => 0，因为 date 上的属性都是不可枚举的
      ```

   """

   params: [{
      name: 'data'
      type: 'object'
      desc: '数据对象'
   },{
      name: 'path'
      type: 'string | number | array'
      desc: '路径或下标'
   },{
      name: 'defaultValue'
      type: '*'
      desc: '当取值不存在时返回，默认值：undefined'
      optional: true
   }]

   return:
      name: 'value'
      type: '*'
      desc: '取出的值'