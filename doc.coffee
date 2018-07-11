sai.test(user, 'name')
   .string.error({name, value, data} => "#{name}: #{value}")
   .min(6).error('should gte 6')