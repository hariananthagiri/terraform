# createing public route_table

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.web.id
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.public_route_table_tags,
    {
      Name = "${local.Name}-public_route_table"
    }
  )
}

# createing private route_table

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.web.id
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.private_route_table_tags,
    {
      Name = "${local.Name}-private_route_table"
    }
  )
}

# createing database route_table

resource "aws_route_table" "database" {
  vpc_id = aws_vpc.web.id
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.database_route_table_tags,
    {
      Name = "${local.Name}-database_route_table"
    }
  )
}
