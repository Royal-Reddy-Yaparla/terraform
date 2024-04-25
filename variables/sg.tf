resource "aws_security_group" "sg_practice" {
  name        = "sg_practice"
  description = "Allow TLS inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.main.id

  ingress {
    description = "access to all inbound"
    from_port = var.ingress_from_port
    to_port = var.ingress_to_port
    protocol = var.ingress_protocol
    cidr_blocks = var.ingress_cidr_blocks
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