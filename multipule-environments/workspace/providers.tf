terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
  backend "s3" {
    bucket = "ananthagiri-state-workspace"
    # key    = "give/path/to/store_tfstate_file"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "ananthagiri-lock-workspace"
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}