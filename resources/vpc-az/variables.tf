variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "common_tags" {
  type    = map(any)
  default = {}
}

variable "vpc_tags" {
  type    = map(any)
  default = {}
}

variable "igw_tags" {
  type    = map(any)
  default = {}
}
variable "environment" {
  type = string
}
variable "project_name" {
  type = string
}

variable "public_subnets_cidr" {
  type = list
  validation {
    condition     = length(var.public_subnets_cidr) == 2
    error_message = "give only two public_subnets_cidr"
  }
}
variable "public_subnets_tags" {
  type    = map
  default = {}
}

variable "private_subnets_cidr" {
  type = list
  validation {
    condition     = length(var.private_subnets_cidr) == 2
    error_message = "give only two private_subnets_cidr"
  }
}

variable "private_subnets_tags" {
  type    = map
  default = {}
}

variable "database_subnets_cidr" {
  type = list
  validation {
    condition     = length(var.database_subnets_cidr) == 2
    error_message = "give only two private_subnets_cidr"
  }
}

variable "database_subnets_tags" {
  type    = map
  default = {}
}

variable "nat_gateway_tags" {
  type    = map
  default = {}
}

variable "public_route_table_tags" {
  type    = map
  default = {}
}

variable "private_route_table_tags" {
  type    = map
  default = {}
}

variable "database_route_table_tags" {
  type    = map
  default = {}
}

variable "is_peering_required" {
  type = bool
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  default = {}
}