# lifecycle
* lifecycle is a nested block that can appear within a resource block
* the fallowing arguments can be used within a lifecycle block 
## create_before_destroy (bool)
* if you edit an existing code narmaly terraform destroy the existing resource and creates the edited code next
* if you use this create_before_destroy option it will create the new resource first then destroy the existing resource
#### create_before_destroy = true
* by default it is false

## prevent_from_destroy(bool)
* terraform wont allow the resource to destroy if we usethis option

#### prevent_from_destroy = true
## ignore_changes(list of attribute names)
* it wont allow the particular attribute to change

#### ignore_changes = [list of attribute names]
* in list give list of attributes terraform wont allow that attribute to change
#### ignore_changes = [all]
* terraform wont allow all attributes to change

#### syntax
* resource "aws_instance" "web" { 
*   lifecycle {
   # ignore_changes = [ all ] # it will ignore all attributes
   # ignore_changes = [ give list of attribute ] 
   # create_before_destroy = false
   # prevent_destroy = true 
*  }
* }