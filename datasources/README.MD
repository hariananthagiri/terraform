# DATASOURCES
* it contains a keyword data it is used to read the data 
* in two ways we can fetch the data to a variable by hardcodeing the data manualy and giveing data dynamically
* datasource is used to fetch the data dynamically
* datasources are mostly used to query the data there in providers and query the data in existing resources 
* datasources fetch the data genrally from outside the terraform
* datasources allow terraform to define and use existing infrastructure
* not managed by terraform
## TYPES

### default
* we can use default value by giveing default = true as shown below
```terraform
data "aws_vpc" "default" {
    default = "true"
}
```
    
 