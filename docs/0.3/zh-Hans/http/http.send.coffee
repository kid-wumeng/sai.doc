module.exports =


   name: 'http.send'


   desc: """
      ```js
      res = await sai.http.send({ method: 'get', url, data, config })
      ```
   """


   signs: [{
      name: '@send( options )'
      desc: '发送请求'

      params: [{
         name: 'options'
         type: 'object'
         children: [
            require('./params/http.requestMethod')
            require('./params/http.requestUrl')
            require('./params/http.requestData')
            require('./params/http.requestOptions')
         ]
      }]

      return:
         require('./return/http.response')
   }]