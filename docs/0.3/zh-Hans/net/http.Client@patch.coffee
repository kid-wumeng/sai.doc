module.exports =


   name: 'http.Client@patch'


   desc: """
      ```js
      res = await client.patch(url, data, options)
      ```
   """


   signs: [{
      name: '@patch( url, data, options )'
      desc: '发送 PATCH 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]