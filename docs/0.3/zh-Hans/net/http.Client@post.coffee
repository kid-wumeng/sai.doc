module.exports =


   name: 'http.Client@post'


   desc: """
      ```js
      res = await client.post(url, data, options)
      ```
   """


   signs: [{
      name: '@post( url, data, options )'
      desc: '发送 POST 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]