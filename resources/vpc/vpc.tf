# createing vpc

resource aws_vpc "web" {
  cidr_block = "10.0.0.0/16"  # user can override it
    tags = {
      Name = "vpc_tf"
    }
}