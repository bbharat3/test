#!/usr/bin/python  
import socket
s = socket.socket()         # Create a socket object
host = socket.gethostname() # Get local machine name

f=open("port.txt")
res = open("result.txt","w+")
for port in f:
#port = 12345                # Reserve a port for your service.
   s = socket.socket()
   print (port)
   port =int(port)
   s.bind((host,port ))        # Bind to the port

   s.listen(5)                 # Now wait for client connection.
   while True:
      c, addr = s.accept()     # Establish connection with client.
      print ('Got connection from', addr[0])
      data='port :'+ str(port)+' opened\n'
      res.write(data)
#      c.send('Thank you for connecting')
      c.close()                # Close the connection
      s.close()
      break;
      
   
   
f.close()
res.close()
