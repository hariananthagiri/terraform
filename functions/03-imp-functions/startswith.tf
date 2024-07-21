resource "aws_instance" "web" {     # terraform reference name
  count = length(var.instance_names)  
  ami           = "ami-0b4f379183e5706b9" 
  instance_type = "t2.micro"
  tags = {
    Name =  "${startswith("prod", "var.instance_names")}[count.index]" # instance names "dev-web", "prod-mongodb"
  }
}
