resource "aws_instance" "web" { # terraform reference name
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform3" # instance name
  }
  lifecycle {
    # prevent_destroy = true
    # create_before_destroy = false
    # ignore_changes = [ 
    #   all
    #  ]
  }
}

# ignore_changes = [ all ] # it will ignore all attributes
# ignore_changes = [ give list of attribute name, ]  # it will ignore particular attributes
# create_before_destroy = false
# prevent_destroy = false