resource "aws_instance" "web" {     # terraform reference name
  for_each = var.instance_names
  ami           = var.ami_id
  instance_type = each.value
  tags =  {
    Name = each.key
  }
}
