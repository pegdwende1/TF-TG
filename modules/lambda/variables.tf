variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_memory_size" {
  description = "Memory size for the Lambda function"
  type        = number
  default     = 128
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

variable "lambda_environment_variables" {
  description = "Environment variables for Lambda"
  type        = map(string)
  default     = {}
}

variable "lambda_zip_path" {
  description = "Path to the ZIP file containing Lambda code"
  type        = string
  default     = "./lambda_function.zip"
}
