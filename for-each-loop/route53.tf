# resource "aws_route53_record" "www" {
#   for_each = var.instance_name
#   zone_id = var.zone_id
#   name    = "${each.key}.${var.hostname}"
#   type    = "A"
#   ttl     = 1
#   records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
# }