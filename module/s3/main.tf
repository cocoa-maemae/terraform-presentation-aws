resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-substr(${terraform.workspace}, 26)"

  tags = {
    Name        = "example bucket"
  }
}