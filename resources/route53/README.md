# route53
* instad of using ip address we use some meaning full names related to project

### syntax
* resource "aws_route53_record" "route53_TF" {
*  zone_id = var.zone_id
*  name    = "${var.instance_names}.${var.zone_name}"     # interpolation
*  type    = "A"
*  ttl     = 1
*  records = [aws_instance.web.private_ip]
* }

#### Note
* we requied zone_id of route53 to create route53 just open route53 and take zone_id from it
* type define type of record "A" refers to Address record type
* it is prefered to give ttl seconds is ttl = 1 recommended because it is cashy
* in records we store ip_address


