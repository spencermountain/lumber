require "sugar"
app = require("express")()
server = require("http").createServer(app)
io = require("socket.io").listen(server)
server.listen 31415
app.get "/", (req, res) ->
  res.sendfile __dirname + "/index.html"


console.log io.sockets

# exports.log= (msg)->

# io.sockets.on "connection", (socket) ->
#   console.log "hi s"
#   socket.emit "news",
#     hello: "world"

#   socket.on "my other event", (data) ->
#     console.log data

