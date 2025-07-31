output "vpc_security_group" {
  value = aws_security_group.sg-terrraform.id
}
output "vpc_id" {
    value = aws_vpc.terraform-project-vpc.id
}
output "subnet_id" {
    value = aws_subnet.terraform_project_subnet.id
}