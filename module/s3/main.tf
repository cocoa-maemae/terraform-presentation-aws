resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-${var.env}"

  tags = {
    Name        = "example bucket"
  }
}