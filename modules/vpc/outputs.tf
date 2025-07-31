output "vpc_security_group" {
  value = aws_security_group.allow_ssh.id
}
output "vpc_id" {
    value = aws_vpc.terraform-project-vpc.id
}