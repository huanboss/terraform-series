# resource "aws_instance" "myaws_instance.myvm" {
#   ami           = var.ami
#   instance_type = var.type
#   tags          = var.tags
# }

locals {
  ami_ids = {
    "linux" : "ami-0ac9397cab55f5044",
    "ubuntu" : "ami-08c40ec9ead489470",
  }
  type = "t2.micro"

  tags = {
    Name        = "EC2"
    Derpartment = "IT"
    Owner       = "Huan"
  }
}

resource "aws_instance" "myvm" {
  ami           = var.ami
  instance_type = var.ami
  tags          = var.tags
}

output "instance_ami" {
 value       = aws_instance.myvm.ami
 description = "AWS EC2 instance ID"
 sensitive   = false
}

output "instance_state" {
  value = aws_instance.myvm.instance_state
}

output "public_ip" {
  value = aws_instance.myvm.public_ip
  sensitive = true
}