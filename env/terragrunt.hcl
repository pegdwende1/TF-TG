terraform {
  source = "../../terraform" 
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "terraform-state-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

inputs = {
  environment = get_env("ENV", "default")
}
