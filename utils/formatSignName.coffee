module.exports = formatSignName = ( sign = {} ) =>

   name = sign.name ? '???'
   type = sign.type ? 'func'

   isClass = type is 'class'
   isAsync = sign.async ? false

   name = 'new '   + name if isClass
   name = 'await ' + name if isAsync

   return name