module.exports =

   path: 'file'
   name: '文件系统'
   desc: ''

   items: [
      '基础'
      require('./isFile')
      require('./isDir')
      require('./readDir')
      require('./ensureDir')
      require('./emptyDir')
      require('./copy')
      require('./remove')

      '读文件'
      require('./readFile')
      require('./readText')
      require('./readJSON')
      require('./readCSON')
      require('./readYAML')

      '写文件'
      require('./writeFile')
      require('./writeText')
      require('./writeJSON')
      require('./writeCSON')
      require('./writeYAML')
   ]