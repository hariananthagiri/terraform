# user_data
* terraform provides a keyword called  "user_data"
* it is used to installing the pckages while installing instances
* we can run commands while installing the instances
### syntax
```terraform
resource "aws_instance" "web" {
  user_data = file("file_name")
}
```
# file("file_name")
* you have to give the file_name in double quotes it is mandatory
* the above function is used to give the information stored in the file
* if we want to execute list of some commands instand of writeing one by one we store it in a file and use it whenever we want to use

### example
#### file("script.sh") 
* it will execute whatever is there in file
##### "double qutations are mandatory"


##### user_data stored in..?
* to see the user_data stored in fallow the fallowing steps
* to see it we have to take sudo access sudo su -
* then open cd var/log
* run ls -l command there you can see a folder named as "cloudinit.log"
* to see them run the below command to see log files only last 10 logs
* tail -f "cloudinit.log"
* we can achive by using below command also it show complete logs 
* less cloudinit.log

#### if user_data is failed once it wont work again 
