terraform {
  cloud {
    organization = "Dev-CSC"

    workspaces {
      name = "test"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "VM-03" {
  ami           = var.ami
  instance_type = var.type
  tags          = var.tags
}
