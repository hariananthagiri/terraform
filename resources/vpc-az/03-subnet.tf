# createing public subnet

resource "aws_subnet" "public" {
  count             = length(var.public_subnets_cidr)
  vpc_id            = aws_vpc.web.id
  cidr_block        = var.public_subnets_cidr[count.index] # user can override it
  availability_zone = local.azs_names[count.index]
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.public_subnets_tags,
    {
      Name = "${local.Name}-public-${local.azs_names[count.index]}"
    }
  )
}

# # createing private subnet

resource "aws_subnet" "private" {
  count             = length(var.private_subnets_cidr)
  vpc_id            = aws_vpc.web.id
  cidr_block        = var.private_subnets_cidr[count.index] # user can override it
  availability_zone = local.azs_names[count.index]
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.private_subnets_tags,
    {
      Name = "${local.Name}-private-${local.azs_names[count.index]}"
    }
  )
}

# # createing database subnet

resource "aws_subnet" "database" {
  count             = length(var.database_subnets_cidr)
  vpc_id            = aws_vpc.web.id
  cidr_block        = var.database_subnets_cidr[count.index] # user can override it
  availability_zone = local.azs_names[count.index]
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    var.database_subnets_tags,
    {
      Name = "${local.Name}-database-${local.azs_names[count.index]}"
    }
  )
}
