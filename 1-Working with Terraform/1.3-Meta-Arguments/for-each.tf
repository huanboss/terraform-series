# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#     }
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

# locals {
#   ami_ids = toset([
#     "ami-0b0dcb5067f052a63",
#     "ami-08c40ec9ead489470",
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

# locals {
#   ami_ids = {
#     "linux" : "ami-0b0dcb5067f052a63",
#     "ubuntu" : "ami-08c40ec9ead489470",
#   }
# }

# resource "aws_instance" "server" {
#   for_each = local.ami_ids
#   ami = each.value
#   instance_type = "t2.micro"
#   tags = {
#     Name = "Server ${each.key}"
#   }
# }