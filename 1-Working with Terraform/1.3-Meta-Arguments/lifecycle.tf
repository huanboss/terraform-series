# create_before_destroy

resource "aws_instance" "server" {
  count         = 1
  ami           = "ami-07a6e3b1c102cdba8"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1b"

  tags = {
    Name = "Server ${count.index}"
  }

  # lifecycle {
  #   prevent_destroy = true
  # }
  # lifecycle {
  #   create_before_destroy = true
  # }
}

# prevent_destroy

