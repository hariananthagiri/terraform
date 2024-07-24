variable "project_name" {

}
variable "environment" {

}
variable "sg_name" {
  #default = mongodb
}
variable "common_tags" {
  default = {}
  type    = map(any)
}
variable "sg_tags" {
  default = {}
  type    = map(any)
}
variable "vpc_id" {

}
variable "sg_description" {
  #default = ""
  type = string
}
variable "sg_ingress_rules" {
  type    = list(any)
  default = []
}