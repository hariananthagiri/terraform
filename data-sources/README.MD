# DATASOURCES
* it contains a keyword data it is used to read the data 
* We can qurey the resouses dynamically by using datasources
* datasources allows the terraform to use the information from outside of the terraform
* data sources are used to read the information of existing resource created by the user and provider 
* datasources are mostly used to query the data there in providers and query the data in existing resources 
### syntax
* data "aws_ami" "name of the datasources" {
* write the information related to resourse  using filters, names, value = [] 
* }
### declareing datasources
* value = resource_type.any_name.attribute
* value = data.aws_ami.datasource_name.id
* ami value stored there as shown in above

### filters
* we can use "n" no.of filters in datasources
* filter is used to give more information about resources where we are featching the data
#### syntax
```terraform
filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
}
```

### default values
* by using data-sources we can pass default values as shown below
#### syntax
```terraform
data "resource_type" "any_name" {
   default = true
}
 ```
* to pass the default value resource_type.any_name.attribute
#### example
```terraform
data "aws_vpc" "default" {
    default = true
}
```
* to pass the default value aws_vpc.default.id

#### Availabulity_zones using data sources
##### syntax
```terraform
data "aws_availability_zones" "azs" {
  #all_availability_zones = true
  #availability_zone = us-east-1a
  #state = "available"
  #most_recent = true
}
```
* to use availabulity zones values we use aws_availability_zones.azs.names it gives the names 