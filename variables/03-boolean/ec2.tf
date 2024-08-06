resource "aws_instance" "web" { 
  count = var.create_instance ? 1 : 0
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform"
  }
}