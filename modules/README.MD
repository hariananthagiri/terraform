# MODULES
* modules are completely depends on DRY prinsiple
* CODE REUSE no need to write infra for every project from the scrach
* "main.tf" is a parent file 
## SYNTAX
* module "module-name" {
*    source = "../give/path"
*    variable = "value"
* }
### some special charectors in linux
* . (dot)         ----> current folder
* .. (double-dot) ----> parent folder
* /               ----> it refer to root
* ~ (tilde)       ----> home directory 

### NOTE
#### WHEN WE ARE USING MODULES WE HAVE TO PASS THE VARIABLES AFTER DECLEREATION IN MODULE CODE IT IS MANDATORY
### VALUES
* the output values give in the module in the name of main file output block name
#### main file iam takeing vpc_id value like
output "vpc_id"
value = aws_vpc.main.id
the the total value of aws_vpc.main.id is stored in "aws_vpc"
#### module file
* now i want vpc_id of main file in module file it must be given as
#### module.roboshop.vpc_id it gives the value of vpc_id in main file
* here vpc_id value is storeing the value from aws_vpc.main.id  instad of giveing this all just give vpc_id
##### NOTE
* while using modules we have two folders or files
1. main folder 
2. module folder 
#### main file
##### in main folder or file we store the value with output bloks
output "vpc_id" {
    value = aws_vpc.main.id
}
* in above example to use the value stored first wev have to output the roboshop module if not it wont give the value as shown below
* if we wont output the vpc_id vale in main folder if we wont output the main folder we cannot get the value
* to refer that value in module folder we use module.roboshop.vpc_id
* here vpc_id is output block name

#### module file
##### if i want to refer that outbut value in  main folder or file from module folder we have to use its  output bloks name "vpc_id"
#### module is created with module "roboshop"
##### to give that value we use module.roboshop.vpc_id
* here vpc_id refers aws_vpc.main.id it gives the value stored in it
