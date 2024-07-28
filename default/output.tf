# to read default vpc_id

output "vpc_id" {
  value = data.aws_vpc.default.id
}

# to read default subnet_id

output "subnet_id" {
  value = data.aws_subnet.default.id
}

# to read default route_table_id

output "route_table_id" {
  value = data.aws_route_table.default.id
}


# to read ami_id

output "ami_id" {
  value = data.aws_ami.centos8
}
