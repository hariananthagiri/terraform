# variable validations
* whenever you want to store a value to a variable with an condition we use this
* by using this we can pass condition and error_message
### syntax
* variable "var.variable_name" {
*  type = string
*  default = "value"  # it throuh an error
*  validation {
*    condition = var.variable_name == "condition"
*    error_message = "write error message"
*  }
* }
## note condition must refer with the var.variable_name

### example
* variable "instance_type" {
*  type = string
*   default = "t2.micro"
###### default = "t3.micro"  # it through an error
*  validation {
*    condition = var.instance_type == "t2.micro"
*    error_message = "instance_type is must be t2.micro"
*  }
* }