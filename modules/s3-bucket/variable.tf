variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "The environment for the deployment (e.g., dev, staging, prod)"
  type        = string
}

variable "versioning_enabled" {
  description = "Whether versioning is enabled for the S3 bucket"
  type        = bool
  default     = false
}

