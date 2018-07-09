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
   }]