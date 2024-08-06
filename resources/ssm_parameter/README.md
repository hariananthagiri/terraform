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

```terraform
resource "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
  type = "String"  # "S" must be capital and in quotes
  value = module.roboshop.vpc_id
}
```
### NOTE
* when your using subnet_id in ssm_parameter give **type="StringList"**
  * when we use **type="StringList"** use **join(",", local.public_subnet_ids)**
### example
```terraform
resource "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type = "StringList"  
  value = join(",", local.public_subnet_ids)
```

#### NOTE
* to read the created ssm_parameter we use database as shown in below
#### syntax

```terraform
data "ssm_parameter" "vpc_id" {
   value = /${var.project_name}/${var.environment}/vpc_id
   over_write = true  
}
```
* by using over_write optrion we can avide duplicates
#### to use the value stored in ssm_parameter
* data.ssm_parameter.vpc_id.value
* to use datasource option first ssm_parameter need to store the value

##### the value is stored in ssm_parameter in sensitive_value we can't see it.