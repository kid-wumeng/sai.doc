module.exports =


   name: 'switch'


   desc: """
      ```js
      function add() {
         return sai.switch(arguments)
            .case(Number, Number)
            .case(String, String).then((a, b) => a + b)
            .case(Array,  Array).then((a, b) => a.concat(b))
            .default(null)
            .result()
      }

      add(1, 2)            // => 3
      add('a', 'b')        // => 'ab'
      add([1, 2], [3, 4])  // => [1, 2, 3, 4]
      add(true, false)     // => null
      ```
   """


   signs: [{
      name: 'switch( args )'
      desc: '生成 Switcher 对象'

      params: [{
         name: 'args'
         type: 'Array-like'
      }]

      return:
         name: 'switcher'
         type: 'sai.Switcher'

      errors: [
         require('../../errors').INVALID_PARAMS
      ]
   }]