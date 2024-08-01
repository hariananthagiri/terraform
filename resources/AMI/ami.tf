# createing ami
resource "aws_ami_from_instance" "main" {
  name = "roboshop-ami"
  source_instance_id = aws_instance.web.id
}