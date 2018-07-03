module.exports = formatData = ( data = '' ) =>

   if _.isString(data)
      return "\"#{data}\""
   else
      return "#{data}"