resource "aws_spot_instance_request" "roboshop" {
  count = length(var.components)
  spot_price    = "0.031"
  ami = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"

  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {}