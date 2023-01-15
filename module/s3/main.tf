resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-${var.env_name}"

  tags = {
    Name        = "example bucket"
  }
}