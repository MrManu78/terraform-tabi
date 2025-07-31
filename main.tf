module "ec2" {
  source = "./modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.subnet_id
  vpc_security_group = module.vpc.vpc_security_group
}
module "vpc" {
  source = "./modules/vpc"
}
module "keypair_terraform_project" {
  source = "./modules/ssh"
  public_key = var.public_key
}