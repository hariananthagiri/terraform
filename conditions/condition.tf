resource "aws_instance" "web" {     # terraform reference name
  ami           = var.ami_id
  instance_type = "${lookup(var.instance_names, "Name")}" == "mongodb" ? "t3.small" : "t2.micro" 
  tags =  var.instance_names
}