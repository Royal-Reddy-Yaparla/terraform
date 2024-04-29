terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "s3" {
    bucket = "project-terraform-practice"
    key    = "my-practice"
    region = "ap-south-1"
    dynamodb_table = "tflock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

