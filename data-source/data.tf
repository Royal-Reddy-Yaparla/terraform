data "aws_ami" "amazon_linux" {
    most_recent = true
    owners = [ "099720109477" ]
    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-*"] 
    }
    filter {
      name = "root-device-type"
      values = ["ebs"] 
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
}