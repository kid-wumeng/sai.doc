module.exports =


   name: 'http.Client@put'


   desc: """
      ```js
      res = await client.put(url, data, options)
      ```
   """


   signs: [{
      name: '@put( url, data, options )'
      desc: '发送 PUT 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]