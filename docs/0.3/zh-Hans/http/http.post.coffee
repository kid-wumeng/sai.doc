module.exports =


   name: 'http.post'


   desc: """
      ```js
      res = await sai.http.post(url, data, options)
      ```
   """


   signs: [{
      name: 'http.post( url, data, options )'
      desc: '发送 POST 请求'

      params: [
         require('./params/http.requestUrl')
         require('./params/http.requestData')
         require('./params/http.requestConfig')
      ]

      return:
         require('./return/http.response')
   }]