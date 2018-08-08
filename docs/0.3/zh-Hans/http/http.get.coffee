module.exports =


   name: 'http.get'


   desc: """
      ```js
      res = await sai.http.get(url, data, options)
      ```
   """


   signs: [{
      name: 'http.get( url, data, options )'
      desc: '发送 GET 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestConfig')
      ]

      return:
         require('./return/http.response')
   }]