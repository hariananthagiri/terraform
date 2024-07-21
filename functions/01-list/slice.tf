# # slice function
# resource "aws_instance" "web" {     # terraform reference name
#   count = length(slice(var.instance_names, 0, 2))
#   ami           = "ami-0b4f379183e5706b9" 
#   instance_type = "t2.micro"
#   tags = {
#     Name = var.instance_names[count.index]  # instance names ["web", "mongodb", "mysql"] 0, 1, 2 i have given 0, 1 web and mongodb
#   }
# }
