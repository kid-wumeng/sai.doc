module.exports =


   name: 'http.Server@listen'


   desc: """
      ```js
      server.listen(80)
      ```
   """


   signs: [{
      name: '@listen( port )'
      desc: '监听端口 ( 正式启动 Server )'

      params: [{
        name: 'port'
        type: 'int ≥ 0'
        desc: '端口号'
      }]

      return:
         name: 'server'
         type: 'node.http.Server'
         desc: '[Node.js 原生 Server 实例](https://nodejs.org/dist/latest-v10.x/docs/api/http.html#http_class_http_server)'
   }]