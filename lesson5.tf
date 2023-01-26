provider "aws" {
  access_key = "AKIAQ3BWO22M2RAPRJZX"
  secret_key = "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"
  region     = "eu-central-1"
}

resource "aws_instance" "my_ubuntu" {
  count = 3
  ami           = "ami-03e08697c325f02ab"
  instance_type = "t2.micro"
  }
resource "aws_instance" "my_Amazon" {
  ami           = "ami-0a261c0e5f51090b1"
  instance_type = "t2.micro"
}
