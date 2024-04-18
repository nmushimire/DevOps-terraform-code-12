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
/*
resource "aws_iam_group" "gp1" {
    name = "manager"
    lifecycle {
      prevent_destroy = false
    }
}

resource "aws_iam_user" "user1" {
    name = "naomi2024"
   depends_on = [ aws_iam_group.gp1 ]

}
*/

resource "aws_instance" "server1" {
    ami = "ami-0a699202e5027c10d"
    instance_type = "t3.micro"
key_name = "wordpress"
  lifecycle {
    create_before_destroy = true
  }
}

