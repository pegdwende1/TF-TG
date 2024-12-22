terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.1.0" #### subject to a change
    }
  }
}


provider "aws" {
    region = "us-west-2"
  
}