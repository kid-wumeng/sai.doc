module.exports =


   name: 'Switcher@then'


   desc: """
      ```js
      sai.switch(args)
         .case(Number).then('hi')
         .case(String).then((a) => a + 'abc')
      ```
   """


   signs: [
      require('./sign_1')
      require('./sign_2')
   ]


   more: """
   # 若是 callback 模式，会将参数传给 callback，而 callback 的返回值将成为 result

   ```js
   function func() {
      return sai.switch(arguments)
         .case(String, Number).then((name, age) => `${name}: ${age}`)
         .result()
   }

   func('kid', 18)  // => 'kid: 18'
   func('sai', 81)  // => 'sai: 81'
   ```

   # callback 中的异常将一路向上抛出

   ```js
   function func() {
      return sai.switch(arguments)
         .case(String).then((name)=>{
            if (name === 'kid')
               return 'hello'
            else
               throw  'error'
         })
         .result()
   }

   func('kid')  // => 'hello'
   func('abc')  // => throw 'error'
   ```
   """