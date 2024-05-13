terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "huan2306"
    key            = "state/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true

  }
}

provider "aws" {
  region = "ap-southeast-1"
}