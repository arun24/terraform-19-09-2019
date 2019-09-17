provider "aws" {
  region = "ap-south-1"
}

resource "aws_key_pair" "tf_demo" {
  key_name   = "tf_demo"
  public_key = "${file("tf-demo.pub")}"
}

resource "aws_instance" "my-instance" {
  ami           = "ami-02913db388613c3e1"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.tf_demo.key_name}"
  user_data = "${file("install-httpd.sh")}"
   
  tags = {
    Name = "Terraform"
  }
}