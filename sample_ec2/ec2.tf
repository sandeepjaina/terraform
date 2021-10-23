resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "interface" {
  subnet_id = aws_subnet.my_subnet.id
}


resource "aws_instance" "foo" {
  ami           = "ami-0e4e4b2f188e91845" # us-west-2
  instance_type = "t2.micro"
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.interface.id
  }

}



resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.my_vpc.cidr_block]
      ipv6_cidr_blocks = [aws_vpc.my_vpc.ipv6_cidr_block]
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    Name = "allow_tls"
  }
}