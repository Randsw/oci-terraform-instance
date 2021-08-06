output "comparement_id" {
  value = var.compartment_id
}

output "instance_id" {
  value =oci_core_instance.oci-instance.id
}

output "private-ip-address" {
  value = oci_core_instance.oci-instance.private_ip
}

output "public-ip-address" {
  value = oci_core_instance.oci-instance.public_ip
}

output "reserved_public_address" {
  value = var.reserve_public_ip ? oci_core_public_ip.public_ip[0].ip_address : null
}