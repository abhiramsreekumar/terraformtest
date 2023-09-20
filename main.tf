terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
assume_role {
    role_arn = "arn:aws:iam::438990558550:role/IAM_ROLE_AWS_JENKINS"
    session_name = "terraform"
}
    }
  }
}
provider "aws" {
  region  = var.reg
  profile = var.profile
}


