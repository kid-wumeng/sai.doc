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
   ]