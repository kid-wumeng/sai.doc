module.exports =

   name: '集合'
   path: 'collection'

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