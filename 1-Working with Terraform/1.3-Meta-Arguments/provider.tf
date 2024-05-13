# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#     }
#   }
# }

# provider "aws" {
#   region = "us-southeast-1"
# }

# provider "aws" {
#   alias  = "us-east-1"
#   region = "us-east-1"
# }

# resource "aws_instance" "server" {
#   count         = 1
#   ami           = "ami-07a6e3b1c102cdba8"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Server 01"
#   }
# }


# # Multi cloud

# Define AWS provider configuration
# provider "aws" {
#   region = "us-west-2"
# }

# # Define GCP provider configuration
# provider "google" {
#   project = "my-project"
#   region  = "us-central1"
# }

# # Create an AWS S3 bucket
# resource "aws_s3_bucket" "example_bucket" {
#   bucket = "example-bucket"
#   acl    = "private"
# }

# # Create a GCP storage bucket
# resource "google_storage_bucket" "example_bucket" {
#   name     = "example-bucket"
#   location = "us-central1"
# }

