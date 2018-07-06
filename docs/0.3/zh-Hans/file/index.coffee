module.exports =

   path: 'file'
   name: '文件系统'
   desc: ''

   items: [
      '文件'
      require('./isFile')
      require('./readFile')
      require('./readText')
      require('./readJSON')
      require('./readCSON')
      require('./readYAML')

      '目录'
      require('./isDir')
      require('./readDir')

      '文件 & 目录'
   ]