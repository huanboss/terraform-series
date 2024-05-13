# provider "aws" {
#   region = "ap-southeast-1"
#   #   access_key = ""
#   #   secret_key = ""	
# }

resource "aws_instance" "intro" {
  ami                    = "ami-07a6e3b1c102cdba8"
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-1a"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
  tags = {
    Name        = "terraform-Instance"
    Project     = "terraform"
    Environment = "dev"
    Owner       = "terraform"
    Department  = "devops"
  }
}
