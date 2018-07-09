module.exports =


   name: 'readDir'


   desc: """
      ```js
      children = await sai.readDir('/assets')
      ```
   """


   signs: [{
      async: true
      name: 'readDir( path )'
      desc: '读取目录下的所有子资源信息，返回一个 Array'

      params: [{
         name: 'path'
         type: 'string'
         desc: '目录路径'
      },{
         name: 'mode'
         type: 'string'
         desc: """
            返回 children 的形式

            * *path* - 子资源的绝对路径
            * *name* - 子资源的名称
            * *data* - 子资源的基本信息
            * *stat* - 子资源的详细信息
         """
         default: 'path'
      }]

      return:
         name: 'children'
         type: 'Array'

      errors: [
         require('../errors').INVALID_PARAMS
         require('../errors').DIR_NOT_FOUND
      ]
   }]


   more: """

      # 基本用法

      假设有以下目录结构：

      ```
      .../
         assets/
            images/
               test.jpg
            test.json
            test.mp3
         index.js
      ```

      # 读取目录中所有子资源的绝对路径

      ```js
      await sai.readDir('/assets')

      // =>
      // [
      //    '.../assets/images',
      //    '.../assets/test.json',
      //    '.../assets/test.mp3'
      // ]
      ```

      # 读取目录中所有子资源的名称（ 包括后缀名 ）

      ```js
      await sai.readDir('/assets', {mode: 'name'})

      // => ['images', 'test.json', 'test.mp3']
      ```

      # 读取目录中所有子资源的基本信息

      ```js
      await sai.readDir('/assets', {mode: 'data'})

      // =>
      // [{
      //    path: '.../assets/images',
      //    name: 'images',
      //    base: 'images',
      //    ext:  '',
      //    dir:  '.../assets'
      // },{
      //    path: '.../assets/test.json',
      //    name: 'test.json',
      //    base: 'test',
      //    ext:  'json',
      //    dir:  '.../assets'
      // },{
      //    path: '.../assets/test.mp3',
      //    name: 'test.mp3',
      //    base: 'test',
      //    ext:  'mp3',
      //    dir:  '.../assets'
      // }]
      ```

      # 读取目录中所有子资源的详细信息（ 待补充 ）

      ```js
      await sai.readDir('/assets', {mode: 'stat'})

      // =>
      // [{
      //    path: '.../assets/images',
      //    name: 'images',
      //    base: 'images',
      //    ext:  '',
      //    dir:  '.../assets'
      // },{
      //    path: '.../assets/test.json',
      //    name: 'test.json',
      //    base: 'test',
      //    ext:  'json',
      //    dir:  '.../assets'
      // },{
      //    path: '.../assets/test.mp3',
      //    name: 'test.mp3',
      //    base: 'test',
      //    ext:  'mp3',
      //    dir:  '.../assets'
      // }]
      ```
   """