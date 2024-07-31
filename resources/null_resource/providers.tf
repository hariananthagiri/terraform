terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
  backend "s3" {
    bucket = "ananthagiri-remote-state"
    # key    = "give/path/to/store_tfstate_file"
    key    = "null"
    region = "us-east-1"
    dynamodb_table = "ananthagiri-locking"
  }
}

provider "aws" {
  # Configuration options
}