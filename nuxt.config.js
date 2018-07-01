module.exports =
{
   build: {
      extend (config, ctx) {
         config.module.rules.push({
            test: /\.coffee$/,
            loader: 'coffee-loader'
         })
         config.resolve.extensions.push('.coffee')
      }
   },

   head: {
      htmlAttrs: {
         lang: 'zh'
      },

      titleTemplate (chunk) {
         return chunk ? `${chunk} - Sai` : 'Sai'
      },

      meta: [{
         charset: 'utf-8'
      },{
         name:    'viewport',
         content: 'width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no'
      },{
         hid:     'keywords',
         name:    'keywords',
         content: 'Sai'
      },{
         hid:     'description',
         name:    'description',
         content: 'Sai'
      }]
   },

   render: {
      resourceHints: false
   }
}