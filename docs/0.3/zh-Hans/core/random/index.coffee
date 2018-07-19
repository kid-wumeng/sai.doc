module.exports =


   name: 'random'


   desc: """
      ```js
      n = sai.random(0, 100)
      ```
   """


   signs: [{
      name: 'random( min, max )'
      desc: '随机获取 min ~ max 之间的一个*整数*'

      params: [{
         name: 'min'
         type: 'number'
         desc: '最小值'
         default: 0
      },{
         name: 'max'
         type: 'number'
         desc: '最大值'
         default: 100
      }]

      return:
         name: 'n'
         type: 'int'
         desc: '随机整数'
   }]


   more: """
      # 基本用法

      ```js
      sai.random()           // => 0 ~ 100
      sai.random(999)        // => 0 ~ 999
      sai.random(0.6, 6.6)   // => 0 ~ 6
      sai.random(-100, 100)  // => -100 ~ 100
      sai.random(100, 100)   // => 100

      sai.random(100, 99)    // => 0, min 不应该比 max 大
      sai.random(null)       // => 0
      sai.random(true)       // => 0
      sai.random('abc')      // => 0
      ```
   """