terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
assume_role {
    role_arn = "arn:aws:iam::268003200000:role/terraform"
}
  }
}
provider "aws" {
  region  = var.reg
  profile = var.profile
}


