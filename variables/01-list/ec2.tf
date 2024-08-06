# resource "aws_instance" "web" { 
#   ami           = "ami-0b4f379183e5706b9"
#   # instance_type = var.instance_type[1]  # it will create t3.small instance
#   instance_type = var.instance_type[*]
#   tags = {
#     Name = "terraform"
#   }
# }


resource "aws_instance" "web" { 
  count = length(var.instance_type)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_type[count.index]
  tags = {
    Name = "terraform"
  }
}