variable "instance_type" {
  description = "EC2 Instance Type"
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
}

variable "vm_name" {
  description = "Name of the VM"
}

variable "owner_name" {
  description = "Name of the owner"
}

variable "team_name" {
  description = "Name of the team the owner belongs too"
  default = "Solutions Engineering"
}