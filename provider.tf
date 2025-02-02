terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "mani-remote-state"
    key = "ec2-module-test" #Put any key here
    region = "us-east-1"
    dynamodb_table = "remote-state-locking" #To enable the Dynamo DB
    
  }
}
#Remote state in --> S3
#Locking in --> Dynamo DB

#Provide Authentication here
provider "aws" {
    region = "us-east-1"
  
}

