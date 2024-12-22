variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "bucket_acl" {
  description = "The ACL for the bucket"
  type        = string
  default     = "private"
}

variable "enable_versioning" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = true
}

variable "expiration_days" {
  description = "Number of days before objects expire"
  type        = number
  default     = 90
}

variable "environment" {
  description = "The deployment environment"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "transition_days" {
  description = "Number of days before objects are transitioned to a cheaper storage class"
  type        = number
  default     = 30
}
variable "storage_class" {
  description = "Storage class to transition objects to"
  type        = string
  default     = "STANDARD_IA"
}