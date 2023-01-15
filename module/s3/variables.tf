variable "aws_s3" {
  type = map(any)
  default = {
    "bucket_name" = "example-bucket-stg"
  }
}