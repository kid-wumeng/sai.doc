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
      require('./move')
      require('./copy')
      require('./remove')
      require('./mime')

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

      '类型判定'
      require('./isMime')
   ]