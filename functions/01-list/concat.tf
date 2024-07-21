# resource "aws_instance" "web" {     # terraform reference name
#   count = length(concat(var.instance_names1, var.instance_names2))
#   ami           = "ami-0b4f379183e5706b9" 
#   instance_type = "t2.micro"
#   tags = {
#     Name = (concat(var.instance_names1, var.instance_names2))[count.index]  # instance names
#   }
# }
# # adding two indivusial list into single list