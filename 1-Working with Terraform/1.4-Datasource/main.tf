provider "aws" {

}

# data "aws_s3_bucket" "existing_bucket" {
#   bucket = "huan2306"
# }


# output "bucket_id" {
#   value = data.aws_s3_bucket.existing_bucket.id
# }

# output "bucket_arn" {
#   value = data.aws_s3_bucket.existing_bucket.arn
# }

# output "bucket_region" {
#   value = data.aws_s3_bucket.existing_bucket.region
# }

# output "bucket_domain_name" {
#   value = data.aws_s3_bucket.existing_bucket.bucket_domain_name
# }

# Define a data source to fetch the latest Linux AMI for Ubuntu in a specific region
# data "aws_ami" "latest_linux_ami" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"] # Replace with desired Ubuntu version
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["amazon"] # Filter by the owner of the AMI (Amazon)
# }

# # Output the ID of the latest Linux AMI
# output "latest_linux_ami_id" {
#   value = data.aws_ami.latest_linux_ami.id
# }

data "aws_instance" "name" {
  filter {
    name = "tag:Name"
    values = ["VM-04"]
  }
}


output "name" {
  value = data.aws_instance.name.ami
}

