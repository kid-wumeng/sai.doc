module.exports =

   path: 'http'
   name: 'HTTP'
   desc: ''

   items: [
      '基础'
      require('./http.get')
      require('./http.post')
      require('./http.put')
      require('./http.patch')
      require('./http.delete')
      require('./http.send')

      'Client'
      require('./http.Client')
      require('./http.Client@url')
      require('./http.Client@get')
      require('./http.Client@post')
      require('./http.Client@put')
      require('./http.Client@patch')
      require('./http.Client@delete')
      require('./http.Client@send')

      'Server'
      require('./http.Server')
      require('./http.Server@all')
      require('./http.Server@get')
      require('./http.Server@post')
      require('./http.Server@put')
      require('./http.Server@patch')
      require('./http.Server@delete')
      require('./http.Server@listen')
   ]