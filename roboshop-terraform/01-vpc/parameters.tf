# using ssm_parameters

resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id"  # name starts with slash /
    type = "String"
    value = module.roboshop.vpc_id
    # overwrite = true   # if we are createing duplicate values 
}