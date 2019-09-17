provider "aws" {
  region = "ap-south-1"
}

resource "aws_key_pair" "tf_demo" {
  key_name   = "tf_demo"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC6ChoEt+eXaJuW/csNU3dYwtH9xFOwBvpm+EXmF820nhqPyekmW/IDMSpQAO5Qcix7YjXO/D5ddSYAd8wSLWSPDtDkwlyF2iB6Sy8dG+S4UD0Np5RF8YdsOnY8UkA0Hh/oURxOO/Y+8HvD2xgm5EEZpAPULl3dEGt+I9kDAVIR8Dm52priR1FgJmoo4kWIqnYB/xVYhydbKgiROmxmbBE7C643AyY+JMqfdxNVyEAavzVWzRMa1F0al5n23qo1N5PJwXWU9CgP9vHEXuLZ5ugRTCuOoXO/s73H73L81bh2nF+he32QCXaT04HaEroPhYoCEWY8fMQ0FCy0n6j759cUVxlN86LMlSjFUP+GDYmdHMsVcWEyDu8tYkHNFzzqzUX2wAaidkgAte+QlDfj/viTj8NPrIX8r1HkMW9W28ssCmmd46GzDPQIekXcFvwWhUXpxkphkQyvrJ3J3S1TjyidZPrHN09ZANY6TJvRL4BPQTMLwvwbdxDYyVHiFeRSMGs= Arun Reddy@DESKTOP-SEMRHGQ"
}

resource "aws_instance" "my-instance" {
  ami           = "ami-02913db388613c3e1"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.tf_demo.key_name}"

  tags = {
    Name = "Terraform"
  }
}