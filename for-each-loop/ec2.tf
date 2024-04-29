resource "aws_instance" "my_instance" {
  for_each = var.instance_name
  ami           = var.ami_id
  # instance_type = "t2.micro"
  instance_type = each.key == "mongodb" || each.key == "shipping" || each.key == "mysql" ? "t2.medium" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg_practice.id]
  tags = {
    Name = var.instance_name[each.key]
    Project= var.project_name
    Component= var.Component_name
    Environment= var.env_name
    Terraform = var.terraform_help
  }
}

# output "ec2_info" {
#   value = aws_instance.my_instance
# }

resource "aws_route53_record" "www" {
  for_each = aws_instance.my_instance # output of aws_instance
  zone_id = var.zone_id
  name    = "${each.key}.${var.hostname}"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}




# output "route53_record" {
#   value = aws_route53_record.www
# }