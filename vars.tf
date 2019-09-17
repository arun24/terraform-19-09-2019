#terraform supports diffrent type of variables like  String,List and Map
variable "ami" {
  type = "map"
  default = {
    ap-south-1     = "ami-02913db388613c3e1"
    ap-southeast-1 = "ami-05c859630889c79c8"
  }
}
variable "instance_count" {
    default = "3"
  }
variable "instance_type" {
  default = "t2.micro"
}
variable "aws_region" {
  default = "ap-southeast-1"
}
