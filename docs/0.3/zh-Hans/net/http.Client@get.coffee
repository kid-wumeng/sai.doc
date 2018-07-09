module.exports =


   name: 'http.Client@get'


   desc: """
      ```js
      res = await client.get(url, data, options)
      ```
   """


   signs: [{
      name: '@get( url, data, options )'
      desc: '发送 GET 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]