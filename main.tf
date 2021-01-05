#===============================================================================
# Terraform backend
#===============================================================================
terraform {
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket         = "tu-terraform-states"
    key            = "testing/change.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-lock"
    region         = "us-east-2"
    profile        = "Testing"
    access_key     = "AKIAJ5XM62NZLHESK4SA"
    secret_key     = "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"
  }
}

#===============================================================================
# Terraform provider and data
#===============================================================================
provider "aws" {
  region  = "us-east-2"
  profile = "Testing"
}

