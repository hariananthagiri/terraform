resource "aws_instance" "web" {
  for_each = var.instance_names
  ami           = "ami-0b4f379183e5706b9"    #devops-practice
  instance_type = each.value
  tags = {
    Name = each.key
  }
}
