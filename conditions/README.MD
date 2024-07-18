### CONDITION
* condition ? if true what : if false what
* MAP contain key = "value" with variable_name
## lookup
* lookup function is used to extract value from a key using variable_name
* syntax lookup(variable_name, key_name) = value it was mainly used in map variable
## interpolation
* variable in mixed with text we do interpolation
* to do this we need "${variable+text}"
* double quotes are recommendeded.
### syntax 
#### "${variable+text+special-charectors}"
#### example
* "${lookup(var.instance_names, "Name")}" == "mongodb" ? "t3.small" : "t2.micro"