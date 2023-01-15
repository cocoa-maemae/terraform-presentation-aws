resource "aws_s3_bucket" "example" {
  bucket = var.s3["bucket_name"]

  tags = {
    Name        = "example bucket"
  }
}