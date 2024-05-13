terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "server" {
  count         = 3
  ami           = "ami-05b46bc4327cf9d99"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
