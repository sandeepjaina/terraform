resource "aws_instance" "foo" {
  count         = 1
  ami           = "ami-0e4e4b2f188e91845" # us-west-2
  instance_type = var.type == null ? "t3.micro" : "t3.small"
  tags          = {
    Name = "example"
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sjaina-terrafor"
    dynamodb_table = "terraform_state"
    key = "sample/terraform.tfstate"

  }
}

variable "type" {
  default = null
}

