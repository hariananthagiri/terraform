variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
# declereing map variable
variable "tags" {
  type = map
  default = {
    Name = "terraform"
  }
}
# declereing list variable
variable "instance_names" {
  type = list
  default = [] # if you enter without giveing any value it comes under optional it wont give any syntax error
}
# declereing boolan variable
# variable "instance_id" {
#   type = bool / false
#   default = true # if you enter without giveing any value it comes under optional it wont give any syntax error
# }