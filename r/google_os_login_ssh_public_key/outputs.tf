output "fingerprint" {
  description = "returns a string"
  value       = google_os_login_ssh_public_key.this.fingerprint
}

output "id" {
  description = "returns a string"
  value       = google_os_login_ssh_public_key.this.id
}

output "this" {
  value = google_os_login_ssh_public_key.this
}

