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




# Type & Value

sai.isMIME(data, mime)
sai.isImage(data)
sai.isEqual(datas)




# Object & Array

sai.random(array, count)
sai.in(data, enums)
sai.copy(data)
sai.type(data)



# File & Directory


await sai.readFile(path, 'utf8')
await sai.readDir(path)

await sai.readText(path)
await sai.read(path)

await sai.writeFile(path, data)

await sai.createDir(path)

await sai.appendFile(path)

await sai.deleteFile(path)
await sai.deleteDir(path)