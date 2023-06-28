provider "aws" { 
  region = "us-west-2" 
} 
resource "aws_security_group" "example" { 
  name        = "example" 
  description = "Example security group" 
  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["your.ip.address/32"] 
  } 
} 