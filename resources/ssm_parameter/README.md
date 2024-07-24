# SSM_PARAMETER STORE
* it is a path used to store the key value pair
* we can refer or store the configureation here
* we refer the stored value in code 
* the parameter store is an aws future
* it is a simple central location
### NOTE
* datasources are mostly used to query the data there in providers and query the data there in existing resources 
* but datasource wont give the data of presently creating resource 
* to avide this we mostly use ssm_parameter store
#### syntax
* resource "aws_ssm_parameter" "vpc_id" {
*   name = "/${var.project_name}/${var.environment}/vpc_id"
*   type = "String"  # "S" must be capital and in quotes
*   value = module.roboshop.vpc_id
* }

#### NOTE
* to read the created ssm_parameter we use database as shown in below
#### syntax
* data "ssm_parameter" "vpc_id" {
*    value = /${var.project_name}/${var.environment}/vpc_id
* }
#### to use the value stored in ssm_parameter
* data.ssm_parameter.vpc_id.value