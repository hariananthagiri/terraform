# to read default vpc_id

data "aws_vpc" "default" {
  default = true
}

# to read default subnet_id

data "aws_subnet" "default" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = "us-east-1a"
}

# to read default route_table_id


data "aws_route_table" "default" {
  vpc_id            = data.aws_vpc.default.id
    
}


