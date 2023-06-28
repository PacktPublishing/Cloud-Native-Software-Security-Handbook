provider "aws" { 
  region = "us-west-2" 
} 

resource "aws_security_group" "web" { 
  name        = "web" 
  description = "Allow all inbound traffic" 

  ingress { 
    from_port   = 0 
    to_port     = 0 
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"] 
  } 
} 

resource "aws_db_instance" "default" { 
  allocated_storage    = 10 
  engine               = "mysql" 
  engine_version       = "5.7" 
  instance_class       = "db.t2.micro" 
  name                 = "mydb" 
  username             = "foo" 
  password             = "foobarbaz" 
  parameter_group_name = "default.mysql5.7" 
  publicly_accessible  = true 
  vpc_security_group_ids = [aws_security_group.web.id] 
} 