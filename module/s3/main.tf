resource "aws_s3_bucket" "example" {
  bucket = var.aws_s3["bucket_name"]

  tags = {
    Name        = "example bucket"
  }
}