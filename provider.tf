terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.0"
    }
  }

  backend "s3" {
    bucket         = "ajay-tf-remote-state"
    key            = "remote-state-ec2-docker" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region         = "us-east-1"
    dynamodb_table = "ajay-tf-remote-state"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}