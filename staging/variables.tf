variable "aws_access_key" {
  type    = string
  default = ""
}

variable "aws_secret_key" {
  type    = string
  default = ""
}

variable "aws_s3" {
  type = map(any)
  default = {
    "bucket_name" = "example-bucket-stg"
  }
}