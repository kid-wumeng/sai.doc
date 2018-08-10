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

      'Duration 时间量'
      require('./Duration@years')
      require('./Duration@months')
      require('./Duration@days')
      require('./Duration@hours')
      require('./Duration@minutes')
      require('./Duration@seconds')
      require('./Duration@milliSeconds')
      require('./Duration@weeks')
      require('./Duration@format')

      'Duration 时间位'
      require('./Duration@yearsBit')
      require('./Duration@monthsBit')
      require('./Duration@daysBit')
      require('./Duration@hoursBit')
      require('./Duration@minutesBit')
      require('./Duration@secondsBit')
      require('./Duration@milliSecondsBit')
      require('./Duration@weeksBit')
      require('./Duration@formatBit')
   ]