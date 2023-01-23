terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  cloud {
    organization = "example-org-94ee4a"
    hostname     = "app.terraform.io"

    workspaces {
      name = "terraform-presentation-aws-production"
    }
  }
}

module "s3" {
  source = "../module/s3"
}

module "sqs" {
  source = "./../module/sqs"
}
