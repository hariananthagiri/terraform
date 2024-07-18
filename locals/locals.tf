locals {
  instance_type = "${lookup(var.instance_names, "Name")}" == "mongodb" ? "t3.small" : "t2.micro" 
}