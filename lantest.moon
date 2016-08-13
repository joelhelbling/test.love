socket = require "socket"

server = assert(socket.bind "*", 9999)

ip, port = server\getsockname!

print "Please telnet to localhost on port #{port}"

while true
  client = server\accept!
  client\settimeout 10

  line, err = client\receive!

  unless err
    client\send "[[ #{string.upper(line)} ]]\n"
    print "sent: #{line}"

  client\close!
