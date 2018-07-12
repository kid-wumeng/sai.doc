module.exports =


   name: 'type'


   signs: [{
      name: 'type( value )'
      desc: '获取值的类型'

      params: [{
         name: 'value'
         type: '*'
      }]

      return:
         name: 'type'
         type: 'function, nil, NaN'
   }]


   desc: """
      ```js
      sai.type('abc')  // => String
      ```
   """


   more: """
      # 字面量

      与 JavaScript 原生的 typeof 不同，sai.type 会返回字面量对应的类：

      ```js
      sai.type(true)               // => Boolean
      sai.type(1)                  // => Number
      sai.type('abc')              // => String
      sai.type(Symbol())           // => Symbol

      sai.type(new Boolean(true))  // => Boolean
      sai.type(new Number(1))      // => Number
      sai.type(new String('abc'))  // => String
      ```

      # 函数

      注意，异步函数会返回 Function 而不是 AsyncFunction，若你有分辨异步函数的需求，可以使用 [sai.isAsyncFunction](/isAsyncFunction)

      ```js
      sai.type(()=>{})       // => Function
      sai.type(async()=>{})  // => Function
      ```

      # 对象

      返回构造类

      ```js
      sai.type({})                // => Object
      sai.type([])                // => Array
      sai.type(new Date)          // => Date
      sai.type(new Buffer('abc')) // => Buffer
      ```

      注意，class 本身的类型是 Function，因为 JavaScript 的类，本质上是一个函数：

      ```js
      sai.type(class Sai {})  // => Function
      sai.type(String)        // => Function
      sai.type(Buffer)        // => Function
      sai.type(Object)        // => Function
      sai.type(Function)      // => Function
      ```

      理论上 Object 是任何对象的基类，但`Object.create(null)`会创建一个无原型对象 ( 构造器为空 )。

      为了方便使用，sai.type 会定义其为 Object 类型：

      ```js
      data = Object.create(null)  // => {}
      data.constructor            // => undefined

      sai.type(data)              // => Object
      ```

      sai.type 返回的是对象的直接构造类，而不是祖先类：

      ```js
      class Animal                {}
      class Monkey extends Animal {}
      class Person extends Monkey {}

      sai.type(new Person)  // => Person
      ```

      # Others

      ```js
      sai.type(undefined)            // undefined
      sai.type(null)                 // null
      sai.type(NaN)                  // NaN
      sai.type(Infinity)             // Number
      ```

      注意，JavaScript 有个古怪的特性，NaN 不等于任何东西，包括它自己，所以你不应该用 sai.type 去比较 NaN：

      ```js
      // JavaScript 的古怪特性
      NaN === NaN  // => false

      // 所以下面这样是不行的
      if (sai.type(value) === NaN)
         // ...

      // 正确的做法是改用 isNaN
      if (isNaN(value))
         // ...
      ```
   """