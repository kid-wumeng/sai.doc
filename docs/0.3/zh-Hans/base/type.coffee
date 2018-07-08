module.exports =


   name: 'type'


   desc: """
      ```js
      sai.type(value)
      ```
   """


   signs: [{
      name: 'type( value )'
      desc: '获取值的类型'

      params: [{
         name: 'value'
         type: '*'
      }]

      return:
         name: 'type'
         type: 'function, nil'
   }]


   more: """
      # 字面量

      与 JavaScript 原生的`typeof`不同，`sai.type`会返回字面量对应的构造类：

      ```js
      sai.type(true)               // => Boolean
      sai.type(1)                  // => Number
      sai.type('abc')              // => String
      ```

      # nil

      ```js
      sai.type(null)       // => null
      sai.type(undefined)  // => undefined
      ```

      # 对象

      ```js
      sai.type([])             // => Array
      sai.type({})             // => Object
      sai.type(()=>{})         // => Function
      sai.type(new Number(1))  // => Number
      sai.type(new Date)       // => Date
      ```

      注意，理论上`Object`是任何对象的基类，但`Object.create(null)`会创建一个无原型对象 ( 构造器为空 )。为了方便使用，`sai.type`会判定其为`Object`类型：

      ```js
      data = Object.create(null)  // => {}
      data.constructor            // => undefined
      sai.type(data)              // => Object
      ```

      # 任何 class 的类型都是`Function`

      因为在 JavaScript 里，类的构造器其实就是一个函数：

      ```js
      sai.type(String)  // => Function
      sai.type(Buffer)  // => Function
      sai.type(Object)  // => Function
      ```

      # 继承对象

      `sai.type`返回的是对象的直接构造类，而不是父类：

      ```js
      class Animal                {}
      class Monkey extends Animal {}
      class Person extends Monkey {}

      me = new Person()

      sai.type(me)  // => Person
      ```
   """