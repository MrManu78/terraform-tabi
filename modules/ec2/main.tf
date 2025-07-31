resource "aws_instance" "Instance1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id                   = module.vpc.subnet_id.id
  associate_public_ip_address = true
  vpc_security_group_ids      = module.vpc.sg.id

  tags = {
    Name = "Instance1"
  }
}
