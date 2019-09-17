provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-instance" {
  ami           = "ami-02913db388613c3e1"
  instance_type = "t2.micro"
  key_name = "arunreddy"

  tags = {
    Name = "Terraform"
  }
}