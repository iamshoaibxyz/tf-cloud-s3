terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.93.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "my-bucker" {
  bucket = "tf-cloud-bucket"
  tags = {
    "workspace" = terraform.workspace
  }
}
