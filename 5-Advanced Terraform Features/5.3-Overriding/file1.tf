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


resource "aws_instance" "my_vm_1" {
  ami           = "ami-0dc44e17251b74325"
  instance_type = "t2.micro"

  tags = {
    Name        = "VM 1",
    environment = "dev"
  }
  availability_zone = "ap-southeast-1b"
}