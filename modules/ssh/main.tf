resource "aws_key_pair" "keypair_terraform_project" {
    key_name = "keypair_terraform_project"
    public_key = var.public_key
}