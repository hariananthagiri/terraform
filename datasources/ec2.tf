resource "aws_instance" "web" { # terraform reference name
  ami           = data.aws_ami.main.id
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform" # instance name
  }
}
