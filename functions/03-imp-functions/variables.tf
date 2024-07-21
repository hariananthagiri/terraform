# variable "instance_names" {
#   type = list
#   default = ["web", "mongodb", "mysql"]
# }

# using startswith() function

variable "instance_names" {
  type = list
  default = ["dev-web", "prod-mongodb"]
}
