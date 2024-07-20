resource "aws_instance" "web" {
  ami           = var.ami_id             #devops-practice
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_names
  }
}
