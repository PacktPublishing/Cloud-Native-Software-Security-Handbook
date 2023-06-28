provider "aws" { 
  region = "us-west-2" 
} 

resource "aws_s3_bucket" "example" { 
  bucket = "example-bucket" 
  server_side_encryption_configuration { 
    rule { 
      apply_server_side_encryption_by_default { 
        sse_algorithm = "AES256" 
      } 
    } 
  } 

  tags = { 
    name        = "My encrypted bucket" 
    Environment = "Dev" 
  } 
} 