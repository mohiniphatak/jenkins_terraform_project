terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "dev-demo-project-terraform-state-ap-south-1-540866440846"
    key            = "statestore/demo-dev.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "dev-demo-project-terraform-state"
  }
}