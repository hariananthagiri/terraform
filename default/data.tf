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

# to read ami_id of centos8 devops-practice

data "aws_ami" "centos8"{
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}