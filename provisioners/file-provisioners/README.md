# file provisioners

* it is used to copy a source file to destination
#### source ---> local dev machine 
#### destination ---> aws ec2 instance

* file provisioner will copy or transfer a file from local machine to aws ec2 instance
##### local dev machine ---> file ---> aws ec2 instance
##### we use provisioners with connection  in resourse block

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

##### "DOUBLE QUTATIONS ARE MANDATORY TO RUN COMMANDS" 