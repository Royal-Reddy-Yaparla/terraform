resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg_practice.id]
  tags = {
    Name = var.tags_name
    Project= var.tags_project
    Component= var.tags_component
    Environment= var.tags_env
    Terraform = var.tags_terraform
  }
}