### Variable  ###
variable "region" {
  default= "eu-west-3"
}


variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "ami_lin" {
  default = "ami-6cd6f714"
}

variable "ami_dock" {
  default = "ami-01b32e912c60acdfa"
}

variable "key_path" {
  # default = "/Users/abalimohammedamine/Downloads/Pyspark_Keys.pem"
  default = "./public.pub"
}


output "Worker-node1_Private_IP" {
  value = aws_instance.server.private_ip
}

