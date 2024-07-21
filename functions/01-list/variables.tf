variable "instance_names" {
  type = list
  default = ["web", "mongodb", "mysql"]
}
# created for concat function
variable "instance_names1" {
  type = list
  default = ["concat1"]
}

variable "instance_names2" {
  type = list
  default = ["concat2"]
}