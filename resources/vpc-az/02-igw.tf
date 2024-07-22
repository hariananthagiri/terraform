# createing internet gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.web.id
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.igw_tags,
    {
      Name = "${local.Name}-igw"
    }
  )
}
