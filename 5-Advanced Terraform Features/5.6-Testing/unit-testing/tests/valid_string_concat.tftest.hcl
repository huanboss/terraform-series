# valid_string_concat.tftest.hcl

// variables {
//   bucket_prefix = "test"
// }

run "valid_string_concat" {

  command = plan

  assert {
    condition     = aws_s3_bucket.bucket.bucket == "huan06-bucket"
    error_message = "S3 bucket name did not match expected"
  }

}
