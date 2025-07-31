variable "instance_type" {
    description = "type d'instance EC2"
    type = string 
    default = "t3.micro"
}

variable "ami_id"{
    description = "ID de l'image AMI"
    type = string
    default = "ami-053b0d53c279acc90"
}