variable "vpc_cidr" {
    type =  string
    default = "10.0.0.0/16"
}
variable "allow_all_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}