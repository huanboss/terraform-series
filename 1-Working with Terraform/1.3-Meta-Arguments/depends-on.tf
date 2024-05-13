# resource "aws_instance" "web_server" {
#   ami           = "ami-07a6e3b1c102cdba8"
#   instance_type = "t2.micro"
#   count         = 2
# }

# resource "aws_security_group" "web_security_group" {
#   name        = "web_security_group"
#   description = "Web server security group"

#   # The web_security_group resource depends on the web_server resource
#   # depends_on = [aws_instance.web_server]

# }
