module.exports = displaySign = ( sign = {} ) =>


   type = sign.type  ? 'func'
   name = sign.name  ? 'sign-name ???'
   asyn = sign.async ? false


   if type is 'func'
      if asyn
         return "await sai.#{name}"
      else
         return "sai.#{name}"


   if type is 'method'
      if asyn
         return "await #{name}"
      else
         return "#{name}"


   if type is 'class'
      return "new sai.#{name}"


   if type is 'const'
      return "#{name}"


   return 'sign ???'