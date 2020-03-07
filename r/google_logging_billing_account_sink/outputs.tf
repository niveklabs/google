output "id" {
  description = "returns a string"
  value       = google_logging_billing_account_sink.this.id
}

output "writer_identity" {
  description = "returns a string"
  value       = google_logging_billing_account_sink.this.writer_identity
}

output "this" {
  value = google_logging_billing_account_sink.this
}

