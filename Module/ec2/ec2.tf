resource "aws_instance" "foo" {
  count = 2
  ami           = "ami-0e4e4b2f188e91845" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.interface.id
  }


}

resource "aws_network_interface" "interface" {
  count = 2
  subnet_id = var.subnet
  }

variable "subnet" {}
variable "sg_id" {}

output "IP" {
  value = aws_instance.foo.*.private_ip
}