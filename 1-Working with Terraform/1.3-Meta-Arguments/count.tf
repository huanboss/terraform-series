terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-southeast-1"
}

resource "aws_instance" "server" {
  count         = 2
  ami           = "ami-07a6e3b1c102cdba8"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}

# resource "aws_instance" "server" {
#   for_each = toset(["instance1", "instance2", "instance3", "instance4"])

#   ami           = "ami-07a6e3b1c102cdba8"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Server ${each.key}"
#   }
# }

# locals {
#   ami_ids = toset([
#     "ami-07a6e3b1c102cdba8",
#     "ami-06c4be2792f419b7b",
#   ])
# }

# resource "aws_instance" "server" {
#   for_each = local.ami_ids
#   ami = each.key
#   instance_type = "t2.micro"
#   tags = {
#     Name = "Server ${each.key}"
#   }
# }

# # Multiple key value iteration



locals {
  ami_ids = {
    "linux" : "ami-051f8a213df8bc089",
    "ubuntu" : "ami-080e1f13689e07408",
  }
}

resource "aws_instance" "server" {

  provider = aws.us-east-1
  for_each = local.ami_ids
  ami = each.value
  instance_type = "t2.micro"
  tags = {
    Name = "Server ${each.key}"
  }
}
