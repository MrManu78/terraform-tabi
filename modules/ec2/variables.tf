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

variable "web_sg_name" {
    description = "Nom de groupe de securite de l'instance"
    type = string
    default = "webserver_sg"
}

variable "public_subnet_id" {
  description = "ID du sous-reseau"
  type = string
  default = "subnet-07ef2b248305ca54c"

}
