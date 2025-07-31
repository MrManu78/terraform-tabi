variable "instance_type" {
    type = string 
}
variable "ami_id"{
    type = string
}
variable "subnet_id"{
    type = string
    default = module.vpc.subnet_id
}
variable "vpc_security_group"{
    type = string
    default = module.vpc.vpc_security_group
}