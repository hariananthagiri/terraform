# to get availability_zones available in aws

data "aws_availability_zones" "azs" {
  #all_availability_zones = true
  #state = "available"
}

# to get default vpc id

data "aws_vpc" "default" {
  default = true
}

# to get default route_table id

data "aws_route_table" "default" {
    vpc_id = data.aws_vpc.default.id
    filter {
        name = "association.main"
        values = ["true"]
    }
}