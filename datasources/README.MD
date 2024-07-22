# DATASOURCES
* it contains a keyword data
* it two ways we can fetch the data to a variable by hardcodeing the data manualy and giveing data dynamically
* datasource is used to fetch the data dynamically
* datasources fetch the data genrally from outside the terraform
* datasources allow terraform to define and use existing infrastructure
* not managed by terraform
## TYPES

### default
* we can use default value by giveing default = true as shown below

* data "aws_vpc" "default" {
*    default = "true"
* }
    
    