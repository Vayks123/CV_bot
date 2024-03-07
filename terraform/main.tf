terraform {
  
  backend "s3" {
    bucket = "terraform-state-cv-bot"
    key    = "terraform.tfstate"
    encrypt = true
    region = "eu-central-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
    region = "eu-central-1"
}



