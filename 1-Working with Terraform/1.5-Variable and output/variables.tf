variable "ami" {
  type        = string
  description = "AMI ID for EC2 Instance"
#  default     = "ami-07a6e3b1c102cdba8"
  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "Please provide a valid value for variable AMI."
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
    Env  = string
  })
  description = "Tags for EC2 Instance"
  # default = {
  #   Name = "VM-03"
  #   Env  = "Dev"
  # }
}