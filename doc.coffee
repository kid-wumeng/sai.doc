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





sai.isID(start, end)

sai.random([min], [max])
sai.random(array, [pop])
sai.clone(data)
sai.type(data)



await sai.writeFile(path, data)
await sai.writeText(path, data)

await sai.writeJSON(path, data)
await sai.writeCSON(path, data)
await sai.writeYAML(path, data)

await sai.createDir(path)

await sai.deleteFile(path)
await sai.deleteDir(path)