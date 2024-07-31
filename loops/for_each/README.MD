### for_each
* for_each is mostly used for map based ittrations
* MAP contain key = "value" with variable_name
* for_each can divided key saperately and value saperately 
* terraform will give a special variable called "each" for ittration
* each.key for key saperation
* each.value for value saperation
* we will give saperate variable to declere key and value to store
* variable_name = each.key, variable_name = each.value
* this variable will store the key and value in ittrations.....
# FOR_EACH NO.OF ITTRATION = NO.OF VARIABLES STORED
# I STORE WHAT I WANT I USE WHERE I WANT 

# declereing for_each
* for_each variable_name
* for_each local.sg_ingress_rules

## decleretion of map variable
```terraform
variable "variable_name" {
  type = map
  default = {
  variable_name1 = "value1"
  variable_name1 = "value1"
  }
}
```

## decleretion of map variable in locals
```terraform
locals {
  sg_ingress_rules = [
   {
   port = 443
   description = "ingress rule for port 443"
   },
   {
   port = 22
   description = "ingress rule for port 22",    
    }
  ]
}
```
