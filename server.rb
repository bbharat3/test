require 'socket'

server=TCPServer.open(1001)
loop{
	client=server.accept
	client.puts("connection open")
	client.close
}



