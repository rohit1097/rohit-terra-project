provider "aws" {
  region  = "eu-west-1" # Don't change the region
}

# Add your S3 backend configuration here
terraform {
  backend "s3" {
    bucket         = "3.devops.candidate.exam"
    key            = "rohit.patil"
    region         = "eu-west-1"
  }
}
