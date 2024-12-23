resource "aws_s3_bucket" "web_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "web-bucket-yanlu"
  }
}


resource "aws_s3_bucket_versioning" "web_bucket_versioning" {
  bucket = aws_s3_bucket.web_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}