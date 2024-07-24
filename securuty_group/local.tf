locals {
  sg_ingress_rules = [
    {
      port        = 443
      description = "ingress rule for port 443"
    },
    {
      port        = 22
      description = "ingress rule for port 22",
    }
  ]
}