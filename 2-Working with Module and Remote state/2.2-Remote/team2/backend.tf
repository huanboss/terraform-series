terraform {
  backend "s3" {
    bucket = "huan2306"
    key    = "state1/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}