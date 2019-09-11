#####################################################################
##
##      Created 9/11/19 by admin. for project1
##
#####################################################################

## REFERENCE {"vsphere_network":{"type": "vsphere_reference_network"}}

terraform {
  required_version = "> 0.8.0"
}

provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}"

  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 1.2"
}


data "vsphere_virtual_machine" "virtual_machine1_template" {
  name          = "${var.virtual_machine1_template_name}"
  datacenter_id = "${data.vsphere_datacenter.virtual_machine1_datacenter.id}"
}

data "vsphere_datacenter" "virtual_machine1_datacenter" {
  name = "${var.virtual_machine1_datacenter_name}"
}

data "vsphere_datastore" "virtual_machine1_datastore" {
  name          = "${var.virtual_machine1_datastore_name}"
  datacenter_id = "${data.vsphere_datacenter.virtual_machine1_datacenter.id}"
}

data "vsphere_network" "network" {
  name          = "${var.network_network_name}"
  datacenter_id = "${data.vsphere_datacenter.virtual_machine1_datacenter.id}"
}

resource "vsphere_virtual_machine" "virtual_machine1" {
  name          = "${var.virtual_machine1_name}"
  datastore_id  = "${data.vsphere_datastore.virtual_machine1_datastore.id}"
  num_cpus      = "${var.virtual_machine1_number_of_vcpu}"
  memory        = "${var.virtual_machine1_memory}"
  guest_id = "${data.vsphere_virtual_machine.virtual_machine1_template.guest_id}"
  resource_pool_id = "${var.virtual_machine1_resource_pool}"
  network_interface {
    network_id = "${data.vsphere_network.network.id}"
  }
  clone {
    template_uuid = "${data.vsphere_virtual_machine.virtual_machine1_template.id}"
  }
  disk {
    name = "${var.virtual_machine1_disk_name}"
    size = "${var.virtual_machine1_disk_size}"
  }
}