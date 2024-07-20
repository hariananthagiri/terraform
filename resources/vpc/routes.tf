# # public route creation

# resource "aws_route" "public_route" {
#   route_table_id            = aws_route_table.public.id
#   vpc_peering_connection_id = "give id"
#   destination_cidr_block    = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.igw.id
# }

# # private route creation

# resource "aws_route" "private_route" {
#   route_table_id            = aws_route_table.private.id
#   vpc_peering_connection_id = "give id"
#   destination_cidr_block    = "0.0.0.0/0"
# }
# we use it for vpc_peering