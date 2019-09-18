#resource "aws_key_pair" "tf_demo" {
 # key_name   = "tf_demo"
  #public_key = "${file("tf-demo.pub")}"
#}
resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami, var.aws_region)}"
  instance_type = "${var.instance_type}"
  #key_name      = "${aws_key_pair.tf_demo.key_name}"
  user_data     = "${file("install-httpd.sh")}"

  tags = {
    Name = "${element(var.instance_tags, count.index)}"
  }
}