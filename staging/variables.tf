variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "s3" {
  type = map
  default = {
    "bucket_name"  = "example-bucket-stg"
  }
}