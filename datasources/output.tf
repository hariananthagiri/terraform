output "ami_id" {
  value = data.aws_ami.main.id
}

output "vpc" {
  value = data.aws_vpc.default.id
}