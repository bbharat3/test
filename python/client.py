#!/usr/bin/python           

import socket               # Import socket module

         # Create a socket object
host = socket.gethostname() # Get local machine name
f=open("port.txt")
for port in f:
    s = socket.socket()
    
    #port = 80                # Reserve a port for your service.
    port=int(port)
    s.connect((host, port))
    print (s.recv(1024))
    s.close()                    # Close the socket when done
