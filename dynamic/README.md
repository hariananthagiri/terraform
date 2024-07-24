# dynamic_block
* to pass an value dynamically we use it
* a particular block inside the resource configuration is getting repeated then we use dynamic block

## syntax
* dynamic "ingress" {
* for_each = local.sg_ingress_rules
*   content {
*     description      = ingress.value.description
*     from_port        = ingress.value.port
*     to_port          = ingress.value.port
*     protocol         = "tcp"
*     cidr_blocks      = ["0.0.0.0/0"] 
*   }
*   }

### note 
* first we have to declere a variable for for_each to run the loop
* for_each runs the loop depends on the no.of variables it have
### dynamic block declaretion dynamic "name" { CONTENT { GIVE CONTENT } }
#### name.value.key
#### in map values stored like KEY = VALUE

##### we declere it in variables
* variable "sg_ingress_rules" {
*  default = [
*    {
*    port = 443
*    description = "ingress rule for port 443"
*    },
*    {
*    port = 22
*    description = "ingress rule for port 22",    
*  }
*  ]
* }

##### for best practice we declere it in locals
* locals {
*  sg_ingress_rules = [
*    {
*    port = 443
*    description = "ingress rule for port 443"
*    },
*    {
*    port = 22
*    description = "ingress rule for port 22",    
*  }
*  ]
* }

#### NOTE
* security_group is list type
* FOR_EACH NO.OF ITTRATION = NO.OF VARIABLES STORED
* dynamic "name" 
