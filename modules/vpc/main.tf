resource "aws_subnet" "terraform_project_subnet" {
  vpc_id                  = aws_vpc.terraform-project-vpc.id
  cidr_block              = var.subnet_cidr

  tags = {
    Name = "terraform-project-subnet"
  }
}
resource "aws_vpc" "terraform-project-vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "terraform-project-vpc"
    }
}
resource "aws_security_group" "sg-terrraform" {
    name = "allow_ssh_terraform_project"
    description = "Allow SSH inbound traffic"
    vpc_id = aws_vpc.terraform-project-vpc.id


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