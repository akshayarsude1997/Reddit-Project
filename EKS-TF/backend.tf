terraform {
  backend "s3" {
    bucket         = "new-on1"
    region         = "us-east-1"
    key            = "EKS-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "new-tf-db-table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
