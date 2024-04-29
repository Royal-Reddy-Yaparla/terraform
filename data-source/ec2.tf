resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.practicetf.id]

  tags = {
    Name = "web-server"
  }
}

resource "aws_security_group" "practicetf" {
  name        = "practice_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  # vpc_id      = aws_vpc.main.id

  tags = {
    Name = "practice_sg"
  }

  ingress {
    description = "Allow all ports"
    from_port        = 0
    to_port          = 0
    protocol         = "all"
    cidr_blocks      = var.cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }
}


