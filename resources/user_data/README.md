# user_data
* terraform provides a keyword called  "user_data"
* it is used to installing the pckages while installing instances
* we can run commands while installing the instances
### syntax
* user_data = file("file_name")

# file("file_name")
* you have to give the file_name in double quotes it is mandatory
* the above function is used to give the information stored in the file
* if we want to execute list of some commands instand of writeing one by one we store it in a file and use it whenever we want to use

### example
#### file("script.sh") 
* it will execute whatever is there in file
##### "double qutations are mandatory"