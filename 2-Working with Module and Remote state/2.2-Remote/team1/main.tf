
resource "aws_instance" "VM01" {
  ami           = "ami-07a6e3b1c102cdba8"
  instance_type = "t2.micro"

  tags = {
    Name = "Server 1"
  }
}

output "instance_id-VM01" {
  value = aws_instance.VM01.id
}

output "availability_zone-VM01" {
  value = aws_instance.VM01.availability_zone
}