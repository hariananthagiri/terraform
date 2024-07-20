# createing internet gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.web.id
  tags = {
    Name = "igw-tf"
  }
}