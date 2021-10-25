data "aws_ami" "ami_name" {
  owners = [973714476881]
  most_recent = true
  name_regex       = "^centos"
}

output "sa" {
  value = data.aws_ami.ami_name.id
}

provider "aws" {
  region = "us-east-1"
}