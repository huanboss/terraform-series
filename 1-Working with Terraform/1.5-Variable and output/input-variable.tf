resource "aws_instance" "VM-03" {
  ami           = var.ami
  instance_type = var.type
  tags          = var.tags
}