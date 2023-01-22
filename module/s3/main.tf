locals {
  env = substr("${terraform.workspace}", 27, -1)
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-${local.env}"

  tags = {
    Name = "example bucket for ${local.env}"
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.example_bucket.id
  acl    = "public-read"
}