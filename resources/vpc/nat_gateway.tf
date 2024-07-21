resource "aws_nat_gateway" "web" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public.id
  depends_on = [
    aws_eip.eip     # fist we have to create eip to create NAT gateway
   ]
    tags = {
        Name = "nat_gateway_tf"
    }
}