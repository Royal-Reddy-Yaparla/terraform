resource "aws_security_group" "sg_practice" {
  name        = "sg_practice"
  description = "Allow TLS inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.main.id

  dynamic ingress {
    for_each = var.ingress_rule
    content {
      from_port = ingress.value["from_port"]
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  egress {
    description = "security group outbound"
    cidr_blocks     = var.egress_cidr_blocks
    protocol       = var.egress_protocol
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
  }

  tags = {
    Name = var.sg_name
    Project= var.tags_project
    Component= var.tags_component
    Environment= var.tags_env
    Terraform = var.tags_terraform
  }
}