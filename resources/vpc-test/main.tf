module "roboshop" {
  source       = "../vpc-az"
  project_name = var.project_name
  environment  = var.environment
  # giveing tags
  common_tags = var.common_tags
  vpc_tags    = var.vpc_tags

  # passing public subnet cidr value
  public_subnets_cidr = var.public_subnets_cidr

  # passing private subnet cidr value
  private_subnets_cidr = var.private_subnets_cidr

  # passing database subnet cidr value
    database_subnets_cidr = var.database_subnets_cidr

  # passing is_peering requied value of vpc peering
  is_peering_required = var.is_peering_required

}