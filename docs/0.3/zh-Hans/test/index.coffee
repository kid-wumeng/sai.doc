module.exports =

   path: 'test'
   name: '测试'

   desc: """
      本单元提供实用的测试套件。
   """

   items: [
      '类型判定'
      require('./is')
      require('./isBoolean')
      require('./isNumber')
      require('./isInt')
      require('./isN')
      require('./isString')
      require('./isSymbol')
      require('./isRegExp')
      require('./isBuffer')
      require('./isDate')
      require('./isError')
      require('./isPromise')
      require('./isFunction')
      require('./isAsyncFunction')
      require('./isArray')
      require('./isArrayLike')
      require('./isObject')
      require('./isPlainObject')
      require('./isNil')

      '数据检测'
      require('./isExist')
      require('./isEmpty')
   ]