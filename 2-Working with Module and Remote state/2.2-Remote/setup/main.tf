terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

# resource "aws_s3_bucket" "s3_bucket" {
#   bucket = "demo-backend-s3" # change this
# }
# resource "aws_dynamodb_table" "terraform_lock" {
#   name           = "terraform-lock"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }

locals {
  ami  = "ami-07a6e3b1c102cdba8"
  type = "t2.micro"
  tags = {
    Name        = "EC2"
    Derpartment = "IT"
    Owner       = "Huan"
  }
}

resource "aws_instance" "myvm" {
  ami           = local.ami
  instance_type = local.type
  tags          = local.tags
}