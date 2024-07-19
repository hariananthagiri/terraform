resource "aws_instance" "web" {     # terraform reference name
  ami           = "ami-0b4f379183e5706b9" 
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform" # instance name
  }

  provisioner "local-exec" {
    command = "touch hari.txt"
  }
  # connection {
  #   type     = "ssh"
  #   user     = "centos"
  #   password = "DevOps321"
  #   host     = self.public_ip   # self = aws_instance.web
  # }
  # connection not requied in local-exec privisioners 
  # because we are not connecting to the remote server here we are performing some operations/commands in local meachine

}