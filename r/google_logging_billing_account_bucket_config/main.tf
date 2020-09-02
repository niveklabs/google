terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_logging_billing_account_bucket_config" "this" {
  billing_account = var.billing_account
  bucket_id       = var.bucket_id
  description     = var.description
  location        = var.location
  retention_days  = var.retention_days
}

