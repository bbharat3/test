require 'socket'

host='127.0.0.1'
port=1001
sock=TCPSocket.open(host, port)

while line=sock.gets
	puts sock
end

sock.close