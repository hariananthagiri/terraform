# resource "aws_instance" "web" {     # terraform reference name
#   for_each = var.instance_names
#   ami           = "ami-0b4f379183e5706b9" 
#   instance_type = each.value
#   tags = {
#     Name = each.key # instance name
#   }
# }