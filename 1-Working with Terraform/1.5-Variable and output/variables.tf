variable "ami" {
  type        = string
  description = "AMI ID cua EC2"
  #  default     = "ami-07a6e3b1c102cdba8"
  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "Nhap dung gia tri AMI id"
  }
}

variable "type" {
  type        = string
  description = "EC2 Instance Type"
  # default     = "t2.micro"
}

variable "tags" {
  type = object({
    Name = string
  })
  description = "Tags for EC2 Instance"
  # default = {
  #   Name = "VM-03"
  #   Env  = "Dev"
  # }
}