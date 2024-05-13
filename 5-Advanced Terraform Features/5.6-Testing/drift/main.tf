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

resource "aws_instance" "server" {
  count         = 3
  ami           = "ami-05b46bc4327cf9d99"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}

variable "region" {
  type = map(any)
  default = {
    "uk1" = {
      "region" = "uksouth",
    },
    "uk2" = {
      "region" = "ukwest",
    },
    "us" = {
      "region" = "eastus",
    }
    "us2" = {
      "region" = "eastus2",
    }
  }
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

variable "cidr" {
  default = "172.16.0.0/20"
}