variable "REGION" {
  default = "ap-southeast-1"
}

variable "ZONE1" {
  default = "ap-southeast-1a"
}

variable "ZONE2" {
  default = "ap-southeast-1b"
}

variable "ZONE3" {
  default = "ap-southeast-1c"
}

variable "AMIS" {
  type = map(any)
  default = {
    ap-southeast-1 = "ami-07a6e3b1c102cdba8"
    ap-northeast-1 = "ami-020283e959651b381"
  }
}

variable "USER" {
  default = "ec2-user"
}

variable "PUB_KEY" {
  default = "dovekey.pub"
}

variable "PRIV_KEY" {
  default = "dovekey"
}

variable "MYIP" {
  default = "27.72.89.59/32"
}
