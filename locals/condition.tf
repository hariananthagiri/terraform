resource "aws_instance" "web" {     # terraform reference name
  ami           = var.ami_id
  instance_type = local.instance_type
  tags =  var.instance_names
}