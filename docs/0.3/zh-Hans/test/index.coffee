module.exports =

   name: '测试'
   path: 'test'

   desc: """
      本单元提供实用的测试套件。
   """

   items: [
      require('./test')
      require('./Tester')
      require('./Tester@name')
      require('./Tester@schema')
      require('./Tester@required')
      require('./Tester@boolean')
      require('./Tester@number')
      require('./Tester@int')
      require('./Tester@natural')
      require('./Tester@id')
   ]