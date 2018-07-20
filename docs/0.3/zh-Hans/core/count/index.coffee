module.exports =


   name: 'count'


   desc: """
      ```js
      sai.count([1, 2, 3], (item, i) => item > 1)
      // => 2

      sai.count({a: 1, b: 2, c: 3}, (value, key) => value > 1
      // => 2
      ```
   """


   signs: [{
      name: 'count( data, callback )'
      desc: '统计 data 中元素的数量，由 callback 决定每个成员是否应该计入'
      more: """
         * *Array-like* - `callback(item, i, arrayLike)`
         * *Set* - `callback(value, key, set)`
         * *Map* - `callback(value, key, map)`
         * *Object* - `callback(value, key, object)`
      """

      params: [{
         name: 'data'
         type: 'Array-like, Set, Map, Object'
      },{
         name: 'callback'
         type: 'function'
      }]

      return:
         name: 'count'
         type: 'int ≥ 0'
   }]


   more: """
      # 基本用法

      例1，统计 Array 中 ≥ 3 的元素有多少：

      ```js
      sai.count([3, 1, 4, 1, 5, 9, 2, 6, 5, 4], (n, i) => n > 3)
      // => 6
      ```

      例2，统计字符串中大写字母有多少：

      ```js
      sai.count('aBcDe', (char, i) => /[A-Z]/.test(char))
      // => 2
      ```

      例3，统计价格大于 1.2 元的水果有多少：

      ```js
      fruitPrices = {
         cherry: 1.5,
         orange: 2.5,
         banana: 3
      }

      sai.count(fruitPrices, (name, value) => value > 1.2)
      // => 3
      ```

      例4，统计 Set 与 Map 中符合条件的成员数量：

      ```js
      set = new Set
      set.add('a')
      set.add('b')
      set.add('c')
      sai.count(set, (value) => value === 'b')
      // => 1

      map = new Map
      map.set('a', 1)
      map.set('b', 2)
      map.set('c', 3)
      sai.count(map, (value) => value > 1)
      // => 2
      ```

      # 不可数的情况

      第一个参数不为 Array-like / Set / Map / Object，或是第二个参数不为 Function，则一律返回 0：

      ```js
      sai.count(null, () => true)  // => 0
      sai.count('abc', null)       // => 0
      ```
   """