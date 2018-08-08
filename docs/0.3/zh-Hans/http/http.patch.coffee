module.exports =


   name: 'http.patch'


   desc: """
      ```js
      res = await sai.http.patch(url, data, options)
      ```
   """


   signs: [{
      name: 'http.patch( url, data, options )'
      desc: '发送 PATCH 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestOptions')
      ]

      return:
         require('./return/http.response')
   }]