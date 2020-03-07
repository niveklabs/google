output "etag" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_binding.this.id
}

output "project" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_binding.this.project
}

output "zone" {
  description = "returns a string"
  value       = google_iap_tunnel_instance_iam_binding.this.zone
}

output "this" {
  value = google_iap_tunnel_instance_iam_binding.this
}

