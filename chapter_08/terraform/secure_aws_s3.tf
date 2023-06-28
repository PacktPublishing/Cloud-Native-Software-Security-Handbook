provider "aws" { 
  region = "us-west-2" 
} 

resource "aws_s3_bucket" "example" { 
  bucket = "example-bucket" 
  acl    = "private" 
  tags = { 
    Name        = "My private bucket" 
    Environment = "Dev" 
  } 
} 