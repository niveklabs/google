output "email" {
  description = "returns a string"
  value       = data.google_client_openid_userinfo.this.email
}

output "id" {
  description = "returns a string"
  value       = data.google_client_openid_userinfo.this.id
}

output "this" {
  value = google_client_openid_userinfo.this
}

