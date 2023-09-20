terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }

  }
}
provider "aws" {
  region  = var.reg
  profile = var.profile
  assume_role {
role_arn = "arn:aws:iam::268003200000:role/terraform"

}
}


