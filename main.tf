terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  # Specify a version compatible with your requirements
    }
  }
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
