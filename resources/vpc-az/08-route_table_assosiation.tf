# route_table assosiation for public route_table

resource "aws_route_table_association" "public" {
  count = length(var.public_subnets_cidr)
  subnet_id = element(aws_subnet.public[*].id, count.index)
  route_table_id = aws_route_table.public.id
}

# route_table assosiation for private route_table

resource "aws_route_table_association" "private" {
  count = length(var.private_subnets_cidr)
  subnet_id = element(aws_subnet.private[*].id, count.index)
  route_table_id = aws_route_table.private.id
}

# route_table assosiation for database route_table

resource "aws_route_table_association" "database" {
  count = length(var.database_subnets_cidr)
  subnet_id = element(aws_subnet.database[*].id, count.index)
  route_table_id = aws_route_table.database.id
}
