terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "dawss3bucket"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "mydynamodb-table"
  }
}

provider "aws" {
  region = "us-east-1"
}