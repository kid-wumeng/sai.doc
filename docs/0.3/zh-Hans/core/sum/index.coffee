module.exports =


   name: 'sum'


   desc: """
      ```js
      sai.sum([1, 2.4, -3.6])      // => -0.2
      sai.sum({a: 1, b: 2, c: 3})  // => 6
      ```
   """


   signs: [{
      name: 'sum( data )'
      desc: '统计 data 中数字元素的和'
      more: """
         * 会跳过非数字成员
         * 和若是浮点数，最多保留 10 点精度
      """

      params: [{
         name: 'data'
         type: 'Array-like, Set, Map, Object'
      }]

      return:
         name: 'sum'
         type: 'number'
   }]


   more: """
      # Array-like

      ```js
      sai.sum([1, 2, 3])  // => 6
      ```

      # Set

      ```js
      set = new Set
      set.add(1)
      set.add(2)
      set.add(3)
      sai.sum(set)  // => 6
      ```

      # Map

      ```js
      map = new Map
      map.set('a', 1)
      map.set('b', 2)
      map.set('c', 3)
      sai.sum(map)  // => 6
      ```

      # 其它 Object

      仅处理可枚举属性

      ```js
      data = {
         a: 1,
         b: 2,
         c: 3
      }
      sai.sum(data)  // => 6
      ```
   """