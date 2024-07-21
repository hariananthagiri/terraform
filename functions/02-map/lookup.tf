# resource "aws_instance" "web" {     # terraform reference name
#   for_each = var.instance_names
#   ami           = "ami-0b4f379183e5706b9" 
#   instance_type = lookup(var.instance_names, "mongodb")  # it gives the value of mongodb value = "t2.small"
#   tags = {
#     Name = each.key # instance name
#   }
# }



# # when we are using map and its related functions double quotes are mandatory