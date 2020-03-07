output "etag" {
  description = "returns a string"
  value       = google_billing_account_iam_binding.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_billing_account_iam_binding.this.id
}

output "this" {
  value = google_billing_account_iam_binding.this
}

