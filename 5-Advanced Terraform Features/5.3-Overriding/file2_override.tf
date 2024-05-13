resource "aws_instance" "my_vm_1" {
  ami           = "ami-0dc44e17251b74325"
  instance_type = "t2.small"

  tags = {
    Name        = "VM 1",
    description = "VM 1"

  }
}