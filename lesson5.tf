provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-central-1"
}

resource "aws_instance" "my_ubuntu" {
  count         = 3
  ami           = "ami-03e08697c325f02ab"
  instance_type = "t2.micro"
  tags          = {
    Name    = "My Amazon Server"
    Owner   = "Alex Filatov"
    Project = "Terraform lessons"
  }
}

resource "aws_instance" "my_Amazon" {
  ami           = "ami-0a261c0e5f51090b1"
  instance_type = "t2.micro"

  tags = {
    Name = "My Amazon Server"
    Owner = "Alex Filatov"
    Project = "Terraform lessons"
  }
}