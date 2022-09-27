variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "key_name" {
  type = string
}

variable "region" {
  type = string
}
