module.exports =


   name: 'Switcher@case'


   desc: """
      ```js
      sai.switch(args)
         .case(Number, Number)
         .case(String, String).then((a, b) => a + b)
         .case(Array,  Array).then((a, b) => a.concat(b))
      ```
   """


   signs: [{
      name: '@case( types... )'
      desc: '用 types 匹配参数'

      params: [{
         name: 'type'
         type: '*'
      }]

      return:
         name: 'switcher'
         type: 'this - 支持方法链'
   }]


   more: """
   # 基本用法

   ```js
   function func() {
      return sai.switch(arguments)
         .case(Array).then(1)         // .case(Class), is instanceof Class  ?
         .case(sai.isSymbol).then(2)  // .case(check), check(value) is true ?
         .case('abc').then(3)         // .case(value), is deep-equal value  ?
         .result()
   }

   func([])        // => 1
   func(Symbol())  // => 2
   func('abc')     // => 3
   ```

   # 参数的类型与数量必须都匹配

   ```js
   function func() {
      return sai.switch(arguments)
         .case(String, Number).then(1)
         .case(String, Number, Number).then(2)
         .case(String, Number, Number, Number).then(3)
         .result()
   }

   func('abc', 1)        // => 1
   func('abc', 1, 2)     // => 2
   func('abc', 1, 2, 3)  // => 3
   ```

   # 值匹配模式将使用 [sai.equal](/equal) 进行深度比较

   ```js
   function func() {
      return sai.switch(arguments)
         .case({a: {b: [1, 2]}}).then(1)
         .case({a: {b: [3, 4]}}).then(2)
         .result()
   }

   func({a: {b: [1, 2]}})  // => 1
   func({a: {b: [3, 4]}})  // => 2
   func({a: {b: [5, 6]}})  // => undefined
   ```

   # 短路式匹配

   一旦匹配中某个 case，则不会再判断剩余的 case，所以应该注意，将比较精确的匹配模式，放在比较模糊的匹配模式之前：

   ```js
   function func() {
      return sai.switch(arguments)
         .case('sai@gmail.com').then(1)
         .case(sai.isEmail).then(2)
         .case(String).then(3)
         .result()
   }

   func('sai@gmail.com')  // => 1
   func('abc@gmail.com')  // => 2
   func('abc')            // => 3
   ```

   # 贯通式匹配

   ```js
   function func() {
      return sai.switch(arguments)
         .case(1)
         .case(2)
         .case(3).then('success')
         .result()
   }

   func(1)  // => 'success'
   func(2)  // => 'success'
   func(3)  // => 'success'
   ```
   """