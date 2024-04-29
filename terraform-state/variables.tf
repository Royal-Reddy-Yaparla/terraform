variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  type = string
  default = "ami-0f58b397bc5c1f2e8"
}

variable "tags_name" {
  type = string
  default = "web-server"
}

variable "tags_env" {
  type = string
  default = "Dev"
}

variable "tags_component" {
  type = string
  default = "web"
}

variable "tags_project" {
  type = string
  default = "Roboshop"
}

variable "tags_terraform" {
  type = bool
  default = true
}

variable "sg_name" {
  type = string
  default = "sg_roboshop"
}

variable "ingress_from_port" {
  type = number
  default = 0
}

variable "ingress_to_port" {
  type = number
  default = 0
}

variable "ingress_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "egress_from_port" {
  type = number
  default = 0
}

variable "egress_to_port" {
  type = number
  default = 0
}

variable "egress_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}


variable "ingress_protocol" {
  type = string
  default = "all"
}

variable "egress_protocol" {
  type = string
  default = "-1"
}
