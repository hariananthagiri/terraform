resource "aws_instance" "web" {     # terraform reference name
  ami           = var.ami_id 
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]  # to attach created security group to our instance
  tags = var.instance_name
}