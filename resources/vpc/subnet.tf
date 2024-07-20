# createing public subnet

resource aws_subnet "public" {
  vpc_id = aws_vpc.web.id
  cidr_block = "10.0.1.0/24"  # user can override it
    tags = {
    Name = "public_subnet"
    }
}

# createing private subnet

resource aws_subnet "private" {
  vpc_id = aws_vpc.web.id
  cidr_block = "10.0.2.0/24"  # user can override it
    tags = {
    Name = "private_subnet"
    }
}