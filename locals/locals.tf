locals {
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "shipping" || var.instance_name[count.index] == "mysql" ? "t2.medium" : "t2.micro"
  route53_record = var.instance_name[count.index] == "web" ? aws_instance.my_instance[count.index].public_ip : aws_instance.my_instance[count.index].public_ip
}


