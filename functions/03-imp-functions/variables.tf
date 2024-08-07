# variable "instance_names" {
#   type = list
#   default = ["web", "mongodb", "mysql"]
# }

# using startswith() function

variable "instance_names" {
  type = list
  default = ["dev-web", "prod-mongodb"]
}

variable "number1" {
  default = ["1", "2", "3", "4", "5"]
}

