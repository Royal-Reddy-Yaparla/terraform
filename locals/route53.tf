resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.hostname}"
  type    = "A"
  ttl     = 1
  records = [local.route53_record]
}