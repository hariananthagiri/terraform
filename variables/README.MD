### variable declaration
* variable can give given in variables.tf file
* we can override that variable.tf file useing terraform.tfvars
* we can swupply a file using -var-file = "file_name.tf"
* we can give value in command line using -var "variable_name = value"
* we can supply by using enviroment variable by using TF_variable_name = "value"

## variable preferences
* 1.command line  terraform plan -var "instance_type=t3.micro"
* 2.-var-file="file_name" # $ terraform plan -var-file="variables.tfvars"
* 3.terraform.tfvars
* 4.environment variable TF_variable_name = "value"
# A DECLERED ONE TYPE OF VARIABLE CAN BE DECLERED AS ANY TYPE OF VARIABLE LATER...

### NOTE
#### we can declere same variables in two folders  one without giveing default value in onefolder  only giveing default in another ####                                                                                                    folder while using modules 
#### example
##### folder-1
* variable "Name" {
*    type = "string"
* }
##### folder-2
* variable "Name" {
*    default = "hari krishna"
* }
##### in which folder u given default or value in that folder you can declere your variable and you can use your variable 
* As shown below (Name= var.name) we have declere this where we are writeing our code based on two folders using
