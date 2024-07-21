# createing public subnet

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.web.id
  #   route {
  # cidr_block    = "0.0.0.0/0"
  # gateway_id = aws_internet_gateway.igw.id
  #   }
  tags = {
    Name = "public_rt_subnet"
  }
}

# createing private subnet

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.web.id
  # route {
  # cidr_block    = "0.0.0.0/0"   
  #   }
  tags = {
    Name = "private_rt_subnet"
  }
}
