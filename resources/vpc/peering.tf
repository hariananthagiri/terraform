# createing vpc_peering

resource "aws_vpc_peering_connection" "peering" {
    vpc_id = aws_vpc.web.id                 # requster_vpc_id
    peer_vpc_id = data.aws_vpc.default.id   # accepter_vpc_id 
    auto_accept =  true
    tags = {
        Name = "vpc_peering_tf"
    }
}


resource "aws_route" "acceptor_route" {
  route_table_id            = data.aws_route_table.default.id
  destination_cidr_block    = aws_vpc.web.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
}

resource "aws_route" "public_peering" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
}

resource "aws_route" "private_peering" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
}
