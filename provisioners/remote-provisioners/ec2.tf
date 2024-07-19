resource "aws_instance" "web" {     # terraform reference name
  ami           = "ami-0b4f379183e5706b9" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]
  tags = {
    Name = "Terraform" # instance name
  }
  provisioner "remote-exec" {
    inline = [ 
      "echo 'iam doing this in remote-exec' > /home/centos/hari.txt",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
     ]
  }
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip   # self = aws_instance.web
  }

}