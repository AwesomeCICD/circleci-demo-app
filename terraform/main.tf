terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*22*-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


data "aws_vpc" "default" {
    default = true
} 

data "aws_security_group" "allow_ssh_anywhere" {
  name = "ssh_http_https_only"
}

data "template_file" "user_data" {
  template = file("${path.module}/user-data.yml")
}

resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [data.aws_security_group.allow_ssh_anywhere.id]
  associate_public_ip_address = true
  user_data                   = data.template_file.user_data.rendered

  tags = {
    name = var.vm_name,
    owner = var.owner_name,
    team = var.team_name
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}