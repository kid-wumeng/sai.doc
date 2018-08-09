module.exports =

   name: '类型判定'
   path: 'is'

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
      require('./isFloat')
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
      require('./isNaN')
      require('./isAny')
      require('./isEmpty')
      require('./isMin')
      require('./isMax')

      '格式判定'
      require('./isEmail')
      require('./isURL')
      require('./isBooleanString')
      require('./isNumberString')
      require('./isSpace')
   ]