module.exports =


   name: 'random'


   desc: """
      ```js
      n = sai.random(0, 100)
      item = sai.random(['a', 'b', 'c'])
      ```
   """


   signs: [{
      name: 'random()'
      desc: '随机获取 0 ~ 100 之间的一个整数'

      return:
         name: 'n'
         type: '0, int+'
         desc: '随机整数'

      errors: [
         require('../errors').INVALID_PARAMS
      ]

   },{

      name: 'random( max )'
      desc: '随机获取 0 ~ max 之间的一个整数'

      params: [{
         name: 'max'
         type: '0, int+'
         desc: '最大值'
      }]

      return:
         name: 'n'
         type: '0, int+'
         desc: '随机整数'

      errors: [
         require('../errors').INVALID_PARAMS
      ]

   },{

      name: 'random( min, max )'
      desc: '随机获取 min ~ max 之间的一个整数'

      params: [{
         name: 'min'
         type: 'int'
         desc: '最小值'
      },{
         name: 'max'
         type: 'int'
         desc: '最大值'
      }]

      return:
         name: 'n'
         type: 'int'
         desc: '随机整数'

      errors: [
         require('../errors').INVALID_PARAMS
      ]

   },{

      name: 'random( array, isPop )'
      desc: '随机获取 array 的一个元素'

      params: [{
         name: 'array'
         type: 'Array'
      },{
         name: 'isPop'
         type: 'boolean'
         desc: '是否弹出选中的元素 ？'
         default: false
      }]

      return:
         name: 'item'
         type: '*'
         desc: '随机元素'

      errors: [
         require('../errors').INVALID_PARAMS
      ]
   }]


   more: """
      # 获取随机整数，min 与 max 可以是负数

      ```js
      sai.random()           // => 0 ~ 100
      sai.random(999)        // => 0 ~ 999
      sai.random(-100, 100)  // => -100 ~ 100
      sai.random(100, 100)   // => 100
      sai.random(100, 99)    // => throw error, min 不能比 max 大
      sai.random(0.1, 100)   // => throw error, min 与 max 都必须为整数
      sai.random(Infinity)   // => throw error, min 与 max 都必须为有穷数
      ```

      # 获取随机元素

      ```js
      // 假设选中'b'
      array = ['a', 'b', 'c']

      item = sai.random(array)                // item = 'b', array = ['a', 'b', 'c']
      item = sai.random(array, isPop = true)  // item = 'b', array = ['a', 'c']

      // 数组为空的情况
      item = sai.random([])                   // item = undefined
      ```
   """