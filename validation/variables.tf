variable "instance_type" {
  type = string
#   default = "t2.micro"
    default = "t3.micro"  # it throuh an error
  validation {
    condition = var.instance_type == "t2.micro"
    error_message = "instance_type is must be t2.micro"
  }
}