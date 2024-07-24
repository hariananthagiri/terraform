variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
# declereing map variable
variable "tags" {
  type = map(any)
  default = {
    name = "terraform" # name as to be given in double quotes
  }
}
# declereing list variable
variable "instance_names" {
  type    = list(any)
  default = [] # if you enter without giveing any value it comes under optional it wont give any syntax error
  #default = [] # if you commented the default value user must provide a value if not it through an error
}
# declereing boolan variable
# variable "instance_id" {
#   type = bool / false
#   default = true # if you enter without giveing any value it comes under optional it wont give any syntax error
# }
# true = 1
# faslse = 0