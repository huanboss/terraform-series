terraform {
  backend "s3" {
    bucket = "huan2306"
    key    = "terraform/backend_exercise6"
    region = "ap-southeast-1"
  }
}
