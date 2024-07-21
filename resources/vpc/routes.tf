# public route creation

resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

# private route creation

resource "aws_route" "private_route" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.web.id
}



# to use this syntax we have to create internet gateway, or NAT gateway, or vpc peering it is MANDATORY
# if you want to create route without createing internet gateway, or NAT gateway, or vpc peering
# use syntax route used in route_table 
# route {
  # cidr_block    = "0.0.0.0/0"   
  #   }
# the syntax is mixed with route_table while createing route_table we useit and create routes there it self
