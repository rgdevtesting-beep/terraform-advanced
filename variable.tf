variable "environments" {
  description = "A map of environments to their respective bucket names"
  type        = map(string)
  default     = {
    dev     = "development"
    staging = "staging"
    prod    = "production"
  }
}

variable "versioning_enabled" {
  description = "Whether versioning is enabled for the S3 bucket"
  type        = map(bool)
  default     = {
    dev     = false
    staging = false
    prod    = true
  }
}