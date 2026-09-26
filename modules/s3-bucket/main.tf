resource "random_string" "name" {
  length = 16
  special = false
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}-${random_string.name.result}"

  tags = {
    Environment = var.environment
    Name        = var.bucket_name
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = var.versioning_enabled ? "Enabled" : "Suspended"
  }
}