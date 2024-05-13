terraform {
  backend "s3" {
    bucket         = "huan2306"              # change this to your bucket name 
    key            = "dev/terraform.tfstate" # path of the folder in bucket
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}