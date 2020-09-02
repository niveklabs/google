terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_logging_organization_bucket_config" "this" {
  bucket_id      = var.bucket_id
  description    = var.description
  location       = var.location
  organization   = var.organization
  retention_days = var.retention_days
}

