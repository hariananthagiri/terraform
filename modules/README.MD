# MODULES
* modules are completely depends on DRY prinsiple
* CODE REUSE no need to write infra for every project from the scrach
## SYNTAX
* module "module-name" {
*    source = "../give/path"
*    variable = "value"
* }
### some special charectors in linux
* . (dot) referes current folder
* .. (double-dot) refers one step back
* / it refer to root
* ~ tilde refers to home directory 

### NOTE
#### WHEN WE ARE USING MODULES WE HAVE TO PASS THE VARIABLES AFTER DECLEREATION IN MODULE CODE IT IS MANDATORY
