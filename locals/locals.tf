locals {
  instance_name = var.instance_name == "mongodb" ? "t2.medium" : "t2.micro"
}