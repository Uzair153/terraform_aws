terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}


  # Configuration options
 provider "aws" {
  region     = "ap-south-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-ACCESS KEY"

}


