variable "environment" {
  description = "The deployment environment"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_memory_size" {
  description = "Memory size for the Lambda function"
  type        = number
  default     = 128
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

variable "lambda_timeout" {
  description = "Timeout for the Lambda function"
  type        = number
  default     = 10
}

variable "lambda_role_arn" {
  description = "ARN of the IAM role for Lambda"
  type        = string
}
variable "lambda_zip_path" {
  description = "Path to the ZIP file containing Lambda code"
  type        = string
  default     = "./lambda_function.zip"
}