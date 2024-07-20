resource "aws_route53_record" "route53_TF" {
  zone_id = var.zone_id
  name    = "${var.instance_names}.${var.zone_name}"     # interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.web.private_ip]
}