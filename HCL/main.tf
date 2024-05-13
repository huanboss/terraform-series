# 1. Blocks: Defining blocks using type and enclosing them with curly braces.

/*block_type {
  attribute = "value"
}
*/

resource "aws_instance" "intro" {
  ami                    = "ami-07a6e3b1c102cdba8"
  instance_type          = var.Environment == "development" ? "t2.micro" : "t2.small"
  availability_zone      = "ap-southeast-1a"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
  availability_zone      = ["us-west-1a", "us-west-1c"]

  tags = {
    Name        = "terraform-Instance"
    Project     = "terraform"
    Environment = "dev"
    Owner       = "terraform"
    Department  = "devops"
  }
}

