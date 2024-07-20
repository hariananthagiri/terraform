resource "aws_instance" "web" {     # terraform reference name
  ami           = var.ami_id 
  instance_type = var.instance_type
  tags = var.instance_name
  vpc_security_group_ids = aws_security_group.roboshop-all.id
  user_data = file("script.sh")  # we can pass user data stored in that file
}