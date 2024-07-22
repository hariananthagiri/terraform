# createing vpc

resource "aws_vpc" "web" {
  cidr_block           = var.vpc_cidr             # user can override it
  enable_dns_hostnames = var.enable_dns_hostnames # when we are createing a server aws by default will give dns_hostnames 
  # by default dns_hostnames takes values as true / false
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
      Name = local.Name
    }
  )
}
