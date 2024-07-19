# local provisioners
* it is used to perform some commands in our local machine where we we running terraform after resource is created 
* it contains a keyword called self (self = aws_instance.web)
* it is used to do some minior operations in our local meachine 
* it invoks a process on the meachine running terraform  not on resource 

### keywords
* command = "write the command to perform"
* when = destroy
* on_failure = continue / fail

#### syntax
* provisioner "local-exec" {
* command = touch hari.txt
* when = destroy
* on_failure = continue / fail
*  }

##### "DOUBLE QUTATIONS ARE MANDATORY TO RUN COMMANDS" 