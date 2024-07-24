resource "aws_instance" "web" { # terraform reference name
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_type
  tags = {
    Name = "Terraform" # instance name
  }
}