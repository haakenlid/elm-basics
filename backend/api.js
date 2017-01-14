// node.js dummy server. Using elexir and json-server to serve dummy data
var jsonServer = require('json-server')

// Create a json-server
var server = jsonServer.create()
// Set default middleware (logger, static, cors and no-cache
server.use(jsonServer.defaults())

// simple on-disk database
var router = jsonServer.router(__dirname + '/db.json')
server.use(router)

// start server
var port = 4000
console.log('Listening at ' + port)
server.listen(port)
