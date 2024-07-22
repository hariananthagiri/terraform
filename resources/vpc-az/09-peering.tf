# createing vpc_peering

resource "aws_vpc_peering_connection" "peering" {
    count = var.is_peering_required ? 1 : 0
    vpc_id = aws_vpc.web.id                 # requster_vpc_id
    peer_vpc_id = var.acceptor_vpc_id == "" ? data.aws_vpc.default.id : var.acceptor_vpc_id  # accepter_vpc_id 
    auto_accept = var.acceptor_vpc_id == "" ? true : false
    tags =  merge(
    var.common_tags,
    var.vpc_tags,
    var.vpc_peering_tags,
    {
      Name = "${local.Name}-vpc_peering"
    }
  )
}
