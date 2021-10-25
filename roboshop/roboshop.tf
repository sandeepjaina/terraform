resource "aws_spot_instance_request" "roboshop" {
  count = length(var.components)
  spot_price    = "0.031"
  ami = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"
  wait_for_fulfillment = true
  tags = {
    Name = element(var.components, count.index)
  }
}

resource "aws_ec2_tag" "tagname" {
  count = length(var.components)
  key         = "Name"
  resource_id = element(aws_spot_instance_request.roboshop.*.id, count.index)
  value       = element(var.components, count.index)
}

variable "components" {}