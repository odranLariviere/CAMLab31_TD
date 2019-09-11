#####################################################################
##
##      Created 9/11/19 by admin. for project1
##
#####################################################################

variable "user" {
  type = "string"
  description = "Generated"
}

variable "password" {
  type = "string"
  description = "Generated"
}

variable "vsphere_server" {
  type = "string"
  description = "Generated"
}

variable "allow_unverified_ssl" {
  type = "string"
  description = "Generated"
}

variable "virtual_machine1_name" {
  type = "string"
  description = "Virtual machine name for virtual_machine1"
}

variable "virtual_machine1_number_of_vcpu" {
  type = "string"
  description = "Number of virtual cpu's."
}

variable "virtual_machine1_memory" {
  type = "string"
  description = "Memory allocation."
}

variable "virtual_machine1_disk_name" {
  type = "string"
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "virtual_machine1_disk_size" {
  type = "string"
  description = "The size of the disk, in GiB."
}

variable "virtual_machine1_template_name" {
  type = "string"
  description = "Generated"
}

variable "virtual_machine1_datacenter_name" {
  type = "string"
  description = "Generated"
}

variable "virtual_machine1_datastore_name" {
  type = "string"
  description = "Generated"
}

variable "virtual_machine1_resource_pool" {
  type = "string"
  description = "Resource pool."
}

variable "network_network_name" {
  type = "string"
  description = "Generated"
}

