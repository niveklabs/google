output "bandwidth" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.bandwidth
}

output "cloud_router_ip_address" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.cloud_router_ip_address
}

output "creation_timestamp" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.creation_timestamp
}

output "customer_router_ip_address" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.customer_router_ip_address
}

output "google_reference_id" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.google_reference_id
}

output "id" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.id
}

output "pairing_key" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.pairing_key
}

output "partner_asn" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.partner_asn
}

output "private_interconnect_info" {
  description = "returns a list of object"
  value       = google_compute_interconnect_attachment.this.private_interconnect_info
}

output "project" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.project
}

output "region" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.region
}

output "self_link" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.self_link
}

output "state" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.state
}

output "type" {
  description = "returns a string"
  value       = google_compute_interconnect_attachment.this.type
}

output "vlan_tag8021q" {
  description = "returns a number"
  value       = google_compute_interconnect_attachment.this.vlan_tag8021q
}

output "this" {
  value = google_compute_interconnect_attachment.this
}

