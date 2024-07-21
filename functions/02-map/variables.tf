

# variable "instance_names" {
#   type = map
#   default = {
#     mongodb = "t2.small"
#     web = "t3.small"
#     mysql = "t2.micro"
#   }
# }


# created to use merge function

variable "instance_names1" {
  type = map
  default = {
    mongodb = "t2.small"
  }
}

variable "instance_names2" {
  type = map
  default = {
    mysql = "t2.micro"
  }
}
