module.exports =

   name: 'is(class, ...value)'

   desc: """
      是否属于指定类 ？
   """

   text: """
      本函数基于 instanceof 封装

      ```js
      sai.is(String, new String('sai'))  // => true
      sai.is(Buffer, new String('sai'))  // => false


      // 注意，直接量并不是类的实例
      sai.is(Boolean, true)  // => false
      sai.is(Number,  1)     // => false
      sai.is(String, 'sai')  // => false


      // 当然，也支持自定义类的检测
      class Cat {}
      class Dog {}

      cat = new Cat()
      dog = new Dog()

      sai.is(Cat, cat)  // => true
      sai.is(Cat, dog)  // => false


      // 支持多值检测
      sai.is(Cat, cat1, cat2, cat3)  // => true
      sai.is(Cat, cat1, cat2, dog3)  // => false
      ```
   """

   params: [{
      name: 'class'
      type: 'function'
      desc: '类 ( 构造函数 )'
   },{
      name: '...value'
      type: '...*'
      desc: '希望检测的值'
   }]

   return:
      type: 'boolean'