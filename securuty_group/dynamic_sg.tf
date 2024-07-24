resource "aws_security_group" "roboshop-all" {
  name        = "terraform_sg" # aws security group name 
  description = "createing a security group from terraform"

  dynamic "ingress" {
    for_each = local.sg_ingress_rules
    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform_sg" # aws security group name 
  }
}