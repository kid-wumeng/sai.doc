module.exports =

   path: 'net'
   name: '网络系统'
   desc: ''

   items: [
      'HTTP'
      require('./http.get')
      require('./http.post')
      require('./http.put')
      require('./http.patch')
      require('./http.delete')

      'HTTP 客户端'
      require('./http.Client')
      require('./http.Client@url')
      require('./http.Client@get')
      require('./http.Client@post')
      require('./http.Client@put')
      require('./http.Client@patch')
      require('./http.Client@delete')

      'HTTP 服务端'
      require('./http.Server')
      require('./http.Server@get')
      require('./http.Server@post')
      require('./http.Server@put')
      require('./http.Server@patch')
      require('./http.Server@delete')
      require('./http.Server@listen')
   ]