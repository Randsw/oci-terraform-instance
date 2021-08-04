data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_core_instance" "oci-instance" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[2].name
  compartment_id      = var.compartment_id
  display_name        = var.instance_name
  shape               = var.instance_shape
  freeform_tags       = var.app_tags

  create_vnic_details {
    subnet_id        = var.subnet_id
    display_name     = var.vnic_name
    assign_public_ip = var.assign_public_ip
    hostname_label   = var.hostname_label
  }

  source_details {
    source_type = "image"
    source_id   = "${var.image_id[var.region]}"
  }

  metadata = {
    ssh_authorized_keys = "${file(var.ssh_key_public)}"
  }

  connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = var.ssh_user
      private_key = "${file(var.ssh_key_private)}"
    }
  provisioner "remote-exec" {
    inline = var.remote_exec_command
    }
}

