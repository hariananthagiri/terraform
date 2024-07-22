# createing nat_gateway using public subnet
# public_subnet have internet connectivity so we are using it to create nat gateway

resource "aws_nat_gateway" "web" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public[0].id   # aws_subnet.public[0].id ---> it is 1a reagion
                                            # after creation we add it to prive route_table using routes           
  depends_on = [
    aws_eip.eip,                            # fist we have to create eip to create NAT gateway
    aws_internet_gateway.igw                # to create NAT gateway we requied internet  
   ]
    tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.nat_gateway_tags,
    {
      Name = "${local.Name}-nat_gateway"
    }
  )
}