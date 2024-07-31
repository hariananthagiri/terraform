# OUTPUTS
* it is ued to print the information of our resourse in output
* we can see output blocks after terraform apply
* we can give the output of one resourse as input to another resource
# NOTE
## resourse aws_instance "web" 
### resourse type starts with the ame of the provider fallowed by "_"
### in terraform we have to combine both aws_instance.web to take value in terraform
* it contains extentions as attributes to know what we are searching 
* if we want to show anything to enduser then defietly we have to use output blocks
### senstive = true/false
* it display or disable the contaiant based on data
#### syntax
```terraform
output "azs" {
value = aws_instance.web.id
}  
```
### example
* aws_instance.web.public_ip, aws_instance.web.private_ip, aws_instance.web.id
* basically we have to search in key = "value" in value we have to search for what we need like value.attribute

#### example

```terraform
output "azs" {
value = data.aws_availability_zones.azs.names
}  
```
 
##### where the value is stored
* in the above example the value is stored in "azs" it is used to show the output in that value using output blocks
* here the value is impartent because it stored everything if we want to use that value as input to other resource as variable we can use
* 
