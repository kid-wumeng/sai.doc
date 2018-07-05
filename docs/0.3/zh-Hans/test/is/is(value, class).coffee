module.exports =

   name: 'is(value, class)'

   desc: """
      value 是否为 class 的实例对象 ？
   """

   detail: """
      # 基本用法

      ```js
      sai.is(new String('sai'), String)  // => true
      sai.is(new String('sai'), Buffer)  // => false
      ```

      同样支持自定义的类：

      ```js
      class Cat {}
      class Dog {}

      cat = new Cat()
      dog = new Dog()

      sai.is(cat, Cat)  // => true
      sai.is(dog, Cat)  // => false
      ```

      # 与 instanceof 的区别

      JavaScript 的`instanceof`认为基本量不属于对应类，这一点往往有违直觉，因此`sai.is`做了特别处理：

      ```js
      false instanceof Boolean  // => false
       123  instanceof Number   // => false
      'abc' instanceof String   // => false

      sai.is(false, Boolean)    // => true
      sai.is( 123,  Number)     // => true
      sai.is('abc', String)     // => true
      ```
   """

   params: [{
      name: 'class'
      type: 'function'
      desc: '类 ( 构造函数 )'
   },{
      name: 'value'
      type: '*'
      desc: '希望检测的值'
   }]

   return:
      name: 'result'
      type: 'boolean'