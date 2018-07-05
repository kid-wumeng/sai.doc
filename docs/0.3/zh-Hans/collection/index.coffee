module.exports =

   path: 'collection'
   name: '集合'

   desc: """
   """

   items: [
      '通用'
      '对象'
      require('./merge')
      '数组'
      require('./first')
      require('./last')
      require('./pushStart')
      require('./pushEnd')
      require('./popStart')
      require('./popEnd')
      require('./concat')
   ]