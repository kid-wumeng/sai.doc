# Store

db = new sai.MongoDB({
   host: '0.0.0.0'
   port: 27017
   name: 'test'
   user: ''
   pass: ''
   autoID: false
   autoIDStore: 'id_store'
})


await db.connect()
      db.url()
await db.close()
await db.drop()




sai.mime(file)
sai.isMIME(data, mime)
sai.isImage(data)
sai.isEqual(datas)
sai.in(datas)





sai.type(data)



await sai.deleteFile(path)
await sai.deleteDir(path)