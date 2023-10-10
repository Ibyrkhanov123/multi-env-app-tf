resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
    Env = var.Env_tag
    Purpose = var.Purpose_tag
  }
}

resource "aws_s3_bucket_versioning" "version1" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = var.version_status
  }
}