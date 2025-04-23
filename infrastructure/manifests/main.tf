terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.94"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }

  required_version = "1.11.3"
}