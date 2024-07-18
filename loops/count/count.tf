resource "aws_instance" "web" {     # terraform reference name
  #count = 2  # Here we are createing 2 instances but name is not changing to change it use cout index
  count = length(var.instance_names) # instad of giveing number we use length function it automatically gives length
  ami           = var.ami_id
  instance_type = var.instance_type
  tags =  {
    Name = var.instance_names[count.index]
  }
}