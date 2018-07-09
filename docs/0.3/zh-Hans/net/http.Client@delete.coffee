module.exports =


   name: 'http.Client@delete'


   desc: """
      ```js
      res = await client.delete(url, data, options)
      ```
   """


   signs: [{
      name: '@delete( url, data, options )'
      desc: '发送 DELETE 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]