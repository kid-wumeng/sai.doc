module.exports =


   name: 'Switcher@default'


   desc: """
      ```js
      sai.switch(args)
         .case(String).then(123)
         .default('abc')

      sai.switch(args)
         .case(String).then(123)
         .default((...args) => 'abc')
      ```
   """


   signs: [
      require('./sign_1')
      require('./sign_2')
   ]


   more: """
   # 参数用法与 [Switcher@then](/Switcher@then) 一致

   ```js
   function func() {
      return sai.switch(arguments)
         .case(String, Number).then((name, age) => `${name}: ${age}`)
         .default(() => '???')
         .result()
   }

   func('kid', 18)  // => 'kid: 18'
   func('sai')      // => '???'
   ```
   """