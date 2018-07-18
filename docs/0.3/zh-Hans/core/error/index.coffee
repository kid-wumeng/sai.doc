module.exports =


   name: 'error'


   desc: """
      ```js
      error = sai.error("this is an error !")
      error = sai.error({
         name: "INVALID_PARAMS",
         message: "this is an error !"
      })
      ```
   """


   signs: [{
      name: 'error( messageOrData )'
      desc: '构造一个 Error 对象'

      params: [{
         name: 'messageOrData'
         type: '*'
         desc: '错误信息或数据集'
      }]

      return:
         name: 'error'
         type: 'Error'
         desc: 'JavaScript 原生 Error 对象'
   }]


   more: """
      # sai.error(data)

      参数是对象时，构造 error 时会将对象的属性归并进去：

      ```js
      error = sai.error({
         name: "INVALID_PARAMS",
         code: 12345,
         message: "this is an error !"
      })

      error.name     // => "INVALID_PARAMS"
      error.code     // => 12345
      error.message  // => "this is an error !"
      error.stack
      ```

      # sai.error(message)

      参数不是对象时，将其作为 error 的 message 属性：

      ```js
      error = sai.error("this is an error !")
      error.name     // => "Error"
      error.message  // => "this is an error !"
      error.stack


      // 注意，参数不一定是字符串，也可以是其他类型，但会统一转为字符串

      error = sai.error(12345)
      error.name     // => "Error"
      error.message  // => "12345"
      error.stack

      error = sai.error()
      error.name     // => "Error"
      error.message  // => "undefined"
      error.stack
      ```
   """