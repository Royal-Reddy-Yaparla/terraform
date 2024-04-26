resource "aws_instance" "my_instance" {
  count=11
  ami           = var.ami_id
  # instance_type = "t2.micro"
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "shipping" || var.instance_name[count.index] == "mysql" ? "t2.medium" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg_practice.id]
  tags = {
    Name = var.instance_name[count.index]
    Project= var.project_name
    Component= var.Component_name
    Environment= var.env_name
    Terraform = var.terraform_help
  }
}