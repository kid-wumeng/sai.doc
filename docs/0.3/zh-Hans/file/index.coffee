module.exports =

   path: 'file'
   name: '文件系统'
   desc: ''

   items: [
      '文件'
      require('./isFile')

      '目录'
      require('./isDir')
      
      '文件 & 目录'
   ]