resource "aws_instance" "my_vm_1" {
    ami           = "ami-0dc44e17251b74325"
    instance_type = "t2.micro"
    
    tags = {
        Name = "VM 1",
    }
}
 
resource "aws_instance" "my_vm_2" {
    ami           = "ami-0dc44e17251b74325"
    instance_type = "t2.micro"
    
    tags = {
        Name = "VM 2",
    }
}