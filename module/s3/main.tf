locals {
  env = substr("${terraform.workspace}", 27, -1)
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-${local.env}"
  acl    = "public-read"

  tags = {
    Name = "example bucket for ${local.env}"
  }
}