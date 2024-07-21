# element function ina list when i need only one element

# resource "aws_instance" "web" {     # terraform reference name
# count = length(element(var.instance_names, 1))
#   ami           = "ami-0b4f379183e5706b9" 
#   instance_type = "t2.micro"
#   tags = {
#     Name = var.instance names[count.index]  # instance names ["web", "mongodb", "mysql"] 0, 1, 2 i have given 1 mongodb
#   }
# }

