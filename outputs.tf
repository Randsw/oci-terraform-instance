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