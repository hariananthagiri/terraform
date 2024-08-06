# MAP
* the map value starts and end with flower brackets {key = "value"}
* it must be given in the form of key and value
* value must be given in double quotes
### [for_each]
* for ittirateing the list terraform given a special veriable called **count.index**
* it store the number **for_each**
* it divides key and value by using special variable called **each.key and each.value**

### syntax for multipule values
```terraform
variable "instance_type" {
  type    = map
  default = {
   key1 = "value"
   key2 = "value"
   key3 = "value"
  } 
}
```
### syntax for single values
```terraform
variable "instance_type" {
  type    = map
  default =
   {
   key1 = "value"
   },
   {
   key2 = "value"
   },
   {
   key3 = "value"
   } 
}
```
### using values of particular variable in map 
* we use the values by giveing as below
   * local.object.attribute_name
   * local.map["keyname"]
  





