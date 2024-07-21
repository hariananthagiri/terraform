# DATASOURCES
* We can qurey the resouses dynamically by using datasources
* datasources allows the terraform to use the information from outside of the terraform
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
* filter {
*     name   = "name"
*     values = ["Centos-8-DevOps-Practice"]
* }

### default values
* by using data-sources we can pass default values as shown below
#### syntax
* data "resource_type" "any_name" {
*    default = true
* }
* to pass the default value resource_type.any_name.attribute
#### example
* data "aws_vpc" "default" {
*    default = true
* }
* to pass the default value aws_vpc.default.id