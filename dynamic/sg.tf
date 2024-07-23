# resource "aws_security_group" "roboshop-all" { 
#     name        = "terraform_sg 'for our reference'"   # aws security group name 
#     description = "createing a security group from terraform"

#     ingress {
#         description      = "Allow All ports"
#         from_port        = 22 
#         to_port          = 22 
#         protocol         = "tcp"
#         cidr_blocks      = ["0.0.0.0/0"]
#     }

#     ingress {
#         description      = "Allow All ports"
#         from_port        = 80 
#         to_port          = 80 
#         protocol         = "tcp"
#         cidr_blocks      = ["0.0.0.0/0"]
#     }

#     egress {
#         from_port        = 0
#         to_port          = 0
#         protocol         = "-1"
#         cidr_blocks      = ["0.0.0.0/0"]
#     }

#     tags = {
#         Name = "terraform_sg"  # aws security group name 
#     }
# }