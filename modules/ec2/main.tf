resource "aws_instance" "Instance1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = var.vpc_security_group.id

  tags = {
    Name = "Instance1"
  }
}
