module.exports =

   path: 'test'
   name: '测试'

   desc: """
      本单元提供实用的测试套件。
   """

   items: [
      '类型检测'
      require('./is')
      require('./isBoolean')
      require('./isNumber')
      require('./isInt')
      require('./isN')
      require('./isString')
      require('./isBuffer')
   ]