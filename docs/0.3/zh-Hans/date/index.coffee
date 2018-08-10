module.exports =

   path: 'date'
   name: '日期 & 时间'
   desc: ''

   items: [
      require('./year')
      require('./month')
      require('./day')
      require('./hour')
      require('./minute')
      require('./second')
      require('./milliSecond')
      require('./week')
      require('./time')
      require('./formatDate')
      require('./ms')
      require('./between')

      'Duration'
      require('./Duration@years')
      require('./Duration@months')
      require('./Duration@days')
      require('./Duration@hours')
      require('./Duration@minutes')
      require('./Duration@seconds')
      require('./Duration@milliSeconds')
      require('./Duration@weeks')
   ]