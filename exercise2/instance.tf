resource "aws_instance" "terraform-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "morpheus-4-GUMURK"
  vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
  tags = {
    Name        = "terraform-Instance"
    Project     = "terraform"
    Environment = "dev"
    Owner       = "terraform"
    Depar       = "IT"
  }
}
