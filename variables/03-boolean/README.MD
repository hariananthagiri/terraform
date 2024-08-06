# BOOLEAN
* it holdes two values either true or false
* **true = 1 and false = 0**
* genrally it is used for conditions

### syntax for boolean
```terraform
variable "create_instance" {
  type    = bool
  default = true    
}
```
```terraform
variable "create_instance" {
  type    = bool
  default = false
}
```
# condition
**count=var.create_instance ? 1 : 0**
   * in above condition var.instance value if it is given true in default it will execute the condition if not it wont execute the condition..
