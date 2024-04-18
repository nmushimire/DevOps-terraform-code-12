terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

    data "aws_instance" "ec21" {
  instance_id = "i-04f105615b2c3915a"
}

resource "aws_instance" "demo" {
    ami =data.aws_ami.ami1.id
    instance_type = data.aws_instance.ec21.instance_type
  key_name = data.aws_instance.ec21.key_name
}
