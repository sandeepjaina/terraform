data "aws_ami" "ami_name" {
  owners = [973714476881]
}

output "sa" {
  value = data.aws_ami.ami_name
}