resource "aws_lambda_function" "lambda_function" {
  function_name = var.lambda_function_name
  runtime       = "python3.9"
  handler       = "index.handler"
  filename      = var.lambda_zip_path

  memory_size = var.lambda_memory_size
  timeout     = var.lambda_timeout

  role = var.lambda_role_arn

  environment {
    variables = var.lambda_environment_variables
  }
}
