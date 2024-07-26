resource "aws_ssm_parameter" "vpc_id" {
    type = "String"
    name = "terraform/sg/vpc_id"
    value = aws_vpc.main.id
}
  