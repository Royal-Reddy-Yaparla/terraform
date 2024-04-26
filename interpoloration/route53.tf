resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.hostname}"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ? aws_instance.my_instance[count.index].public_ip : aws_instance.my_instance[count.index].public_ip]
}