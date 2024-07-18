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