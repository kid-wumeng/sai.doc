module.exports = to = ( path, query ) ->


   if path
      path = path
   else
      path = @$route.path


   if query
      query = _.merge({}, @$route.query, query)
   else
      query = @$route.query


   return { path, query }