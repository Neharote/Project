terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Specify a version compatible with your requirements
    }
  }
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"
  public_key = file("~/.ssh/id_rsa.pub") # Ensure you have the public key here
}



provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "ubuntu1" {
  ami           = "ami-0ad21ae1d0696ad58"  
  instance_type = "t2.micro"

  tags = {
    Name = "UbuntuInstance"
  }
}
