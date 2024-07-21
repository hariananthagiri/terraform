resource "aws_nat_gateway" "web" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public.id   # public_subnet have internet connectivity so we are using it to create nat gateway
                                         # after creation we add it to routes           
  depends_on = [
    aws_eip.eip,                # fist we have to create eip to create NAT gateway
    aws_internet_gateway.igw    # to create NAT gateway we requied internet  
   ]
    tags = {
        Name = "nat_gateway_tf"
    }
}