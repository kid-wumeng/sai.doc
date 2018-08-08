module.exports =


   name: 'http.put'


   desc: """
      ```js
      res = await sai.http.put(url, data, options)
      ```
   """


   signs: [{
      name: 'http.put( url, data, options )'
      desc: '发送 PUT 请求'

      params: [
         require('../_params/http.requestUrl')
         require('../_params/http.requestData')
         require('../_params/http.requestConfig')
      ]

      return:
         require('../_return/http.response')
   }]