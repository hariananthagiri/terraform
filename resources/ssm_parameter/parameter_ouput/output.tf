output "instance_id" {
  value = data.aws_ssm_parameter.instance_id.value
  sensitive = false
}