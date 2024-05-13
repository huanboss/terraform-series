
data "terraform_remote_state" "data1" {
  backend = "s3"
  config = {
    bucket = "huan2306"
    key    = "state/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_ebs_volume" "ebs-02" {
  availability_zone = data.terraform_remote_state.data1.outputs.availability_zone-VM01
  size              = 10
}

resource "aws_volume_attachment" "ebs-at" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs-02.id
  instance_id = data.terraform_remote_state.data1.outputs.instance_id-VM01
}