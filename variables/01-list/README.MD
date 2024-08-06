# LIST
* the variable list is starting and ending with closed brackets and value must be stored in double quotes  ["value"]
* the list value starts from 0, 1, 2, 3, 4,.............n-1
### [count.index]
* for ittirateing the list terraform given a special veriable called **count.index**
* it store the number **count.index=number**

### syntax
```terraform
variable "instance_type" {
  type    = list
  default = ["value"] 
}
```
* to make list variable **optional** we use use
```terraform
variable "instance_type" {
  type    = list
  default = [] 
}
```
* to make list variable **compalsary** we use use
```terraform
variable "instance_type" {
  type    = list
}
```
* if we have mutipule values in list we want to take a particular value we use as below
   * variable_name[0], variable_name[1], variable_name[2], variable_name[3] ,variable_name[n-1]
* if i need all values stored in list we use * as below
   * variable_name[*] it is mainly used in output blocks