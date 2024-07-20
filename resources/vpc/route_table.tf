# createing public subnet

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.web.id
  tags = {
    Name = "public_rt_subnet"
  }
}

# createing private subnet

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.web.id
  tags = {
    Name = "private_rt_subnet"
  }
}
