module.exports =

   name: '判定 & 测试'
   path: 'test'

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
      require('./isID')
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

      '数据判定'
      require('./isEqual')
      require('./isEmpty')

      '格式判定'
      require('./isMatch')
      require('./isEmail')
      require('./isURL')
   ]