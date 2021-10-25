resource "aws_instance" "roboshop" {
  count = length(var.components)
  ami = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"

  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {}