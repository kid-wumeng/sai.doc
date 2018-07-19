module.exports =


   name: 'equal'


   desc: """
      ```js
      data1 = {'a': {'b': ['c']}}
      data2 = {'a': {'b': ['c']}}

      sai.equal(data1, data2)  // => true
      ```
   """


   signs: [{
      name: 'equal( data1, data2 )'
      desc: '*深度比较* data1 与 data2，判定两者是否完全等值 ？'

      params: [{
         name: 'data1'
         type: '*'
      },{
         name: 'data2'
         type: '*'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 基本用法

      本方法既可以比较基本量，也可以比较对象。若比较对象，则深度遍历所有可枚举属性，判断其值是否全部相等。

      成功条件是值与类型都相等，但并不追求是同一个引用：

      ```js
      sai.equal(undefined, undefined)                          // => true
      sai.equal(null, null)                                    // => true
      sai.equal(true, true)                                    // => true
      sai.equal(1, 1)                                          // => true
      sai.equal('abc', 'abc')                                  // => true
      sai.equal({'a': {'b': ['c']}}, {'a': {'b': ['c']}})      // => true
      sai.equal(['a', 'b', 'c'], ['a', 'b', 'c'])              // => true
      sai.equal(new Date(2018, 6, 14), new Date(2018, 6, 14))  // => true
      sai.equal(NaN, NaN)                                      // => true
      ```

      你可以直接比较字面量与对应实例：

      ```js
      sai.equal(true, new Boolean(true))   // => true
      sai.equal(1, new Number(1))          // => true
      sai.equal('abc', new String('abc'))  // => true
      ```

      以下是一些不相等的例子：

      ```js
      sai.equal(undefined, null)        // => true
      sai.equal(1, '1')                 // => true
      sai.equal(->, ->)                 // => true
      sai.equal({'0': 'abc'}, ['abc'])  // => true
      ```

      由于 Symbol 的特殊性，仅当两者为同一个 Symbol 时才返回 true；否则，哪怕值是一样的，也会返回 false：

      ```js
      abcSymbol = Symbol('abc')

      sai.equal(abcSymbol, abcSymbol)          // => true
      sai.equal(Symbol('abc'), Symbol('abc'))  // => false
      ```
   """