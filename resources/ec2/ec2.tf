# to create a ec2 instance

resource "aws_instance" "web" {     # terraform reference name
  ami           = var.ami_id 
  instance_type = var.instance_type
  tags = var.tags
}

# # to stop a ec2 instance

# resource "aws_ec2_instance_state" "web" {     # terraform reference name
#   instance_id = aws_instance.web.id
#   state = "stopped"
# }


# # to start a stoped ec2 instance

# resource "aws_ec2_instance_state" "web" {     # terraform reference name
#   instance_id = aws_instance.web.id
#   state = "running"
# }

# # to terminate a ec2 instance
#  terraform destroy -auto-approve -target aws_instance.web