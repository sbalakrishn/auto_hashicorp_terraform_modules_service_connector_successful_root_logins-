# Output the "list" of all availability domains.
output "all-availability-domains-in-your-tenancy" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}

data "oci_sch_service_connector" "eightxeight_service_connector" {
  service_connector_id = oci_sch_service_connector.eightxeight_service_connector.id
}

output "oci_sch_service_connector_id" {
  value = data.oci_sch_service_connector.eightxeight_service_connector.id
}
