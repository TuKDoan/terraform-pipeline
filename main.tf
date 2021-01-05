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
  }
}

#===============================================================================
# Terraform provider and data
#===============================================================================
provider "aws" {
  region  = "us-east-2"
  profile = "Testing"
}

