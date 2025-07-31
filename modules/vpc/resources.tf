resource "aws_vpc" "terraform-project-vpc" {
    tags = {
      Name = "terraform-project-vpc"
    }
}
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh_terraform_project"
    description = "Allow SSH inbound traffic"

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.allow_all_cidr
    }
ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = var.allow_all_cidr
    }
egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.allow_all_cidr
    }
}