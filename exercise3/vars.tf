variable "REGION" {
  default = "ap-southeast-1"
}

variable "ZONE1" {
  default = "ap-southeast-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    ap-southeast-1 = "ami-07a6e3b1c102cdba8"
    ap-northeast-1 = "ami-020283e959651b381"
  }
}

variable USER {
  default = "ec2-user"
}