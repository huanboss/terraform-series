

# locals {
#   ami  = "ami-07a6e3b1c102cdba8"
#   type = "t2.micro"
#   tags = {
#     Name        = "EC2"
#     Derpartment = "IT"
#     Owner       = "Huan"
#   }
# }

# resource "aws_instance" "myvm" {
#   ami           = local.ami
#   instance_type = local.type
#   tags          = local.tags
# }