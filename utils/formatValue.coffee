module.exports = formatValue = ( value ) =>

   if _.isBoolean(value)
      return "#{value}"

   if _.isNumber(value)
      return "#{value}"

   if _.isString(value)
      return "\"#{value}\""

   if _.isPlainObject(value)
      return "{}"

   if _.isArray(value)
      return "[]"

   if _.isError(value)
      return "new Error('...')"

   if _.isNull(value)
      return 'null'

   return ''