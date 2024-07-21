resource "aws_instance" "web" {     # terraform reference name
  for_each = merge(var.instance_names1, var.instance_names2)
  ami           = "ami-0b4f379183e5706b9" 
  instance_type = each.value
  tags = {
    Name = each.key # instance name
  }
}