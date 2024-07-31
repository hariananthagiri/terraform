### Locals
* instad o giveing a big syntax in program we store it in locals and we give it by "local.name"
* it make it look good we use locals in pgm 
* it has its disadvantage its readabulity is missing
# syntax
```terraform
locals {
  name="store what you want to store (i.e VALUE)"
}
```
* to declere we use local.name
## lookup
* lookup function is used to extract value from a key using variable_name
* syntax lookup(variable_name, key_name) = value it was mainly used in map variable
