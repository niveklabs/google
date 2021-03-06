output "etag" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_member.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_member.this.id
}

output "project" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_member.this.project
}

output "zone" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_member.this.zone
}

output "this" {
  value = google_iap_tunnel_instance_iam_member.this
}

