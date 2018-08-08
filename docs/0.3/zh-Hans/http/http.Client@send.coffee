module.exports =


   name: 'http.Client@send'


   desc: """
      ```js
      res = await client.send({ method: 'get', path, data, config })
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
            require('./params/http.requestPath')
            require('./params/http.requestData')
            require('./params/http.requestOptions')
         ]
      }]

      return:
         require('./return/http.response')
   }]