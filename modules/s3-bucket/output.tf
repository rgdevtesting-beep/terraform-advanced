output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
  description = "The name of the created S3 bucket"
  depends_on = [aws_s3_bucket.bucket] 
}

output "bucket_arn" {
  value = aws_s3_bucket.bucket.arn
  description = "The ARN of the created S3 bucket"
  depends_on = [aws_s3_bucket.bucket]
}