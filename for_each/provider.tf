terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.13.0"
    }
  }

  backend "s3" {
    bucket = "my-terraform-states-lakshman"
    key = "for_each_demo"
    region = "us-east-1"
    #dynamodb_table = "dyno_state_lask"
    use_lockfile = true
  }
}


provider "aws" {
  region = "us-east-1"
}