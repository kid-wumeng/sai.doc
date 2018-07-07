module.exports =

   path: 'file'
   name: '文件系统'
   desc: ''

   items: [
      '文件'
      require('./isFile')
      require('./readFile')
      require('./readText')
      require('./writeFile')
      require('./writeText')

      '目录'
      require('./isDir')
      require('./readDir')

      '格式化读写'
      require('./readJSON')
      require('./readCSON')
      require('./readYAML')
   ]