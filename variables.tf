variable "ssh_key_public" {
}

variable "ssh_key_private" {
}

variable "region" {
}

variable "image_id" {
  type = map(string)
}

variable "compartment_id" {
    type = string
}

variable "compartment_state" {
    type = string  
    default = "ACTIVE"
}

variable "compartment_access_level" {
    type = string
    default = "ACCESSIBLE"
  
}

variable "instance_name" {
    type = string  
}

variable "instance_shape" {
    type = string  
    default = "VM.Standard.E2.1.Micro"
}

variable "vnic_name" {
    type = string
}

variable "assign_public_ip" {
    type = bool
    default = true  
}

variable "hostname_label" {
    type = string
}

variable "ssh_user" {
    type = string
}

variable "remote_exec_command" {
    type = list(string)
}

variable "app_tags" {
    type = map(string)  
}

variable "subnet_id" {
    type = string  
}

variable "reserve_public_ip" {
    type = bool
}

variable "reserved_public_ip_name" {
    type = string
    description = "Display name for reserved public ip resource"
}