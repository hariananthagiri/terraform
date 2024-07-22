# createing db_subnet_group

resource "aws_db_subnet_group" "default" {
  name       = "${local.Name}"
  subnet_ids = aws_subnet.database[*].id
  tags = {
    Name = "${local.Name}"
  }
}
