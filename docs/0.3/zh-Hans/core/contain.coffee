module.exports =


   name: 'contain'


   desc: """
      ```js
      sai.contain('abcde', 'cd')  // => true

      array = [{a: 1}, {b: 2}, {c: 3}]
      sai.contain(array, {b: 2})  // => true
      ```
   """


   signs: [{
      name: 'contain( arrayLike, item )'
      desc: '是否包含指定元素 ？'
      more: '本质上是 [sai.index](/index) > -1 的便捷方式'

      params: [{
         name: 'arrayLike'
         type: 'Array-like'
      },{
         name: 'item'
         type: '*'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 字符串模式

      ```js
      sai.contain('abcde', 'cd')  // => true
      sai.contain('abcde', 'ce')  // => false
      ```

      # 其他 Array-like 模式

      ```js
      array = [true, 'abc', null, 'abc', [1, 2, 3]]

      sai.contain(array, 'abc')      // => true
      sai.contain(array, [1, 2, 3])  // => true
      sai.contain(array, 123)        // => false
      ```

      元素若是对象，采用 [sai.equal](/equal) 进行*深度比较*：

      ```js
      array = [{'a': {'b': [1]}}, 'abc']
      child =  {'a': {'b': [1]}}

      sai.contain(array, child)  // => true
      ```
   """