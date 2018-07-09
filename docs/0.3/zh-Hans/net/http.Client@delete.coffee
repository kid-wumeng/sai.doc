module.exports =


   name: 'http.Client@delete'


   desc: """
      ```js
      res = await client.delete('/users/1', data, options)
      ```
   """


   signs: [{
      name: '@delete( path, data, options )'
      desc: '发送 DELETE 请求'

      params: [
         require('./params/http.requestPath')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]