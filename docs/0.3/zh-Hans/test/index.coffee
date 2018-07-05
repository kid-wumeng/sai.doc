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
      require('./isFunction')
      require('./isAsyncFunction')
      require('./isArray')
      require('./isArrayLike')
      require('./isBuffer')
      require('./isRegExp')
      require('./isDate')
      require('./isError')
      require('./isPromise')
      require('./isObject')
      require('./isPlainObject')
      require('./isNil')

      '值检测'
      require('./isExist')
      require('./isEmpty')
   ]