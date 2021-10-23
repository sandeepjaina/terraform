resource "aws_instance" "sample" {
  ami                   = "ami-0e4e4b2f188e91845"
  instance_type         = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags                  = {
    Name                = "Sample"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow_ssh"


  tags = {
    Name = "allow_tls"
  }
}

output "ec2-attributes" {
  value = aws_instance.sample
}

output "SG-attributes" {
  value = aws_security_group.allow_ssh
}

provider "aws" {
  region = "us-east-1"
}
