variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "web"
}


variable "cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}