module.exports =

   path: 'base'
   name: '基本扩展'

   desc: """
   """

   items: [
      '通用基本'
      '对象'
      require('./merge')
      '数组'
      require('./first')
      require('./last')
      require('./popStart')
      require('./concat')
   ]