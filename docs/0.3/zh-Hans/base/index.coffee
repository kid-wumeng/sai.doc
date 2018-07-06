module.exports =

   path: 'base'
   name: '基石'
   desc: '基石函数包提供最常用的功能，包括对基本类型、对象、数组等的扩展'

   items: [
      '通用'
      require('./len')

      '对象'
      require('./has')
      require('./get')
      require('./set')
      require('./del')
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