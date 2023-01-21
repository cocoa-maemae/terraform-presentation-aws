locals {
  env = substr("${terraform.workspace}", 27, -1)
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-${local.env}"

  tags = {
    Name = "example bucket"
  }
}