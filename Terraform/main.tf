# Include S3 Module
module "s3" {
  source           = "../modules/s3"
  s3_bucket_name   = var.s3_bucket_name
  bucket_acl       = "private"
  enable_versioning = true
  transition_days = var.transition_days
  storage_class   = var.storage_class
  environment      = var.environment
  project_name     = var.project_name
}


# Include Lambda Module
module "lambda" {
  source                    = "../modules/lambda"
  lambda_function_name      = var.lambda_function_name
  lambda_memory_size        = var.lambda_memory_size
  lambda_timeout            = var.lambda_timeout
  lambda_role_arn           = var.lambda_role_arn
  lambda_environment_variables = {
    S3_BUCKET = module.s3.bucket_name
  }
  lambda_zip_path = var.lambda_zip_path
}
