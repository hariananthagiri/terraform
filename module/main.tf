module "ec2" {
  source = "../ec2"
#   ami_id = var.ami_id
#   instance_type = var.instance_type
#   tags = var.tags
  ami_id = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform"
  }
}