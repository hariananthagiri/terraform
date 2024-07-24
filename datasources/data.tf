data "aws_ami" "main" {
  most_recent = true
  # owners = ["self"]  # if you have an existing ami alrady created by you or amazon or others
  # filter {
  #   name = "tag:Name"
  #   values = ["Terraform"]
  # }
}

# using default value

data "aws_vpc" "default" {
  default = true
}