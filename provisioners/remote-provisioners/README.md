# remote provisioners
* first connect to the server
* then you can run anything inside the server
* we can run some commands and install some packages in inside the connecting to the remote server

### syntax
```terraform
provisioner "remote-exec" {
inline = [ 
    "echo 'iam doing this in remote-exec' > /home/centos/hari.txt" *     "sudo yum install nginx -y"
    "systemctl start nginx"
   ]
}
```

### connections block 
* it is used to connect the remote server where we are transfering the file
#### syntax
```terraform
connection {
   type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip   # self = aws_instance.web
}
```
#### keywords
```terraform
inline = [ 
   "run the commands what you want to run saparate commands with cama(,) it will reflect in the inside of the remote server" 
   "COMMAND-1",
   "COMMAND-2",
   "COMMAND-3"
]
```
##### "DOUBLE QUTATIONS ARE MANDATORY TO RUN COMMANDS" 