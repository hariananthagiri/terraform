resource "aws_ssm_parameter" "instance_id" {
  name  = "/ec2/terraform/instance_id"
  type  = "String"
  value = aws_instance.web.id
}
