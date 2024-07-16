variable "ami_id" {
  type = string
}

variable "instance_key_pair" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "access_key" {
  type = string
  default = ""
}
variable "secret_key" {
  type = string
  default = ""
  
}