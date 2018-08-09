module.exports =

   name: '测试'
   path: 'test'

   desc: """
      本单元提供实用的测试套件。
   """

   items: [
      '基础'
      require('./test')

      'Tester'
      require('./Tester')
      require('./Tester@name')
      require('./Tester@schema')
      require('./Tester@required')
      require('./Tester@in')
      require('./Tester@is')
      require('./Tester@boolean')
      require('./Tester@number')
      require('./Tester@int')
      require('./Tester@natural')
      require('./Tester@id')
      require('./Tester@string')
      require('./Tester@buffer')
      require('./Tester@date')
      require('./Tester@array')
      require('./Tester@plainObject')
      require('./Tester@min')
      require('./Tester@max')
      require('./Tester@mime')
      require('./Tester@check')
      require('./Tester@format')
      require('./Tester@rule')

      'Schema'
      require('./Schema@format')
      require('./Schema@rule')
      require('./Schema@test')
   ]