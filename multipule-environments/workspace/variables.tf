variable "instance_type" {
  type = map
  default = {
    dev = "t2.micro"
    prod = "t3.small"
  }
}