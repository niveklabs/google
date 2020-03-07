output "etag" {
  description = "returns a string"
  value       = google_billing_account_iam_policy.this.etag
}

output "id" {
  description = "returns a string"
  value       = google_billing_account_iam_policy.this.id
}

output "this" {
  value = google_billing_account_iam_policy.this
}

