module.exports =


   name: 'is'


   desc: """
      ```js
      sai.is('abc', String)  // => true
      sai.is('abc', Buffer)  // => false
      ```
   """


   signs: [{
      name: 'is( value, class )'
      desc: 'value 是否为 class 的实例对象 ？'

      params: [{
         name: 'class'
         type: 'function, nil, NaN'
         desc: '类 ( 构造函数 )'
      },{
         name: 'value'
         type: '*'
         desc: '期望判定的值'
      }]

      return:
         name: 'result'
         type: 'boolean'
   }]


   more: """
      # 字面量

      ```js
      sai.is(true, Boolean)               // => true
      sai.is(1, Number)                   // => true
      sai.is('abc', String)               // => true
      sai.is(Symbol(), Symbol)            // => true

      sai.is(new Boolean(true), Boolean)  // => true
      sai.is(new Number(1), Number)       // => true
      sai.is(new String('abc'), String)   // => true
      ```

      # 函数

      ```js
      sai.is(()=>{}, Function)       // => true
      sai.is(async()=>{}, Function)  // => true
      sai.is(()=>{}, Object)         // => true
      sai.is(async()=>{}, Object)    // => true
      ```

      # 对象

      ```js
      sai.is({}, Object)                 // => true
      sai.is([], Array)                  // => true
      sai.is(new Date, Date)             // => true
      sai.is(new Buffer('abc'), Buffer)  // => true

      sai.is(String, Function)           // => true
      sai.is(Object, Function)           // => true
      sai.is(Function, Function)         // => true
      ```

      支持沿着原型链判定：

      ```js
      class Animal                {}
      class Monkey extends Animal {}
      class Person extends Monkey {}

      sai.is(new Person, Person)  // => true
      sai.is(new Person, Monkey)  // => true
      sai.is(new Person, Animal)  // => true
      sai.is(new Person, Object)  // => true
      ```

      Object 是大多数对象的基类，包括由 Object.create(null) 创建的无原型对象：

      ```js
      sai.is(new Boolean(true), Object)    // => true
      sai.is(new Number(1), Object)        // => true
      sai.is(new String('abc'), Object)    // => true

      sai.is(String, Object)               // => true
      sai.is(Object, Object)               // => true
      sai.is(Function, Object)             // => true

      sai.is(Object.create(null), Object)  // => true
      ```

      但也有例外：

      ```js
      sai.is(true, Object)       // => false
      sai.is(1, Object)          // => false
      sai.is('abc', Object)      // => false
      sai.is(Symbol(), Object)   // => false

      sai.is(undefined, Object)  // => false
      sai.is(null, Object)       // => false
      sai.is(NaN, Object)        // => false
      sai.is(Infinity, Object)   // => false
      ```

      # Others

      ```js
      sai.is(undefined, undefined)  // => true
      sai.is(null, null)            // => true
      sai.is(NaN, NaN)              // => true
      sai.is(Infinity, Number)      // => true
      ```
   """