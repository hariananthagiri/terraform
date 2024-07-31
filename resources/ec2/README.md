# resouses in aws
* the resource is that what you create inside the cloud 
* aws resource is an entity that you can work 
* provideing computing services like  servers, storage, databases, networking and software over the internet

#### infrastructure creation ---------------> server creation
#### configuration management ---------------> server configuration

### ec2-instance
* it is nothing but createing a server  where you can install packages use storage e.t.c..


### syntax
```terraform
resource "resouce_type" "resource_name" {     # terraform reference name
 ami           = var.ami_id 
 instance_type = var.instance_type
#attribute = value
#arguments
 tags = var.tags # aws instance name
}
```
 
#### resouce_type
* it refers what type of resource you want to create 
* it starts with the name of the provider you want to create fallowed by underscroe "_" 
* afte undescore what you want to create 
##### example
* resource "aws_instance" "web"
* here provider was aws i want to create instance and name was web
#### resource_name
* it was completly userdefined you can give whatever name you want to give

### to supply any value in terraform use
##### resouce_type.resource_name.argument
* it directly gives the value stored init

* if we do any changes in code after createing the resouse in terraform again running terraform init
#### terraform destroy it first and create it again