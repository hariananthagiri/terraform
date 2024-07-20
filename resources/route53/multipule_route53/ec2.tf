resource "aws_instance" "web" {
  count = length(var.instance_names)
  ami           = var.ami_id             #devops-practice
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}
