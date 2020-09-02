terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_logging_project_bucket_config" "this" {
  bucket_id      = var.bucket_id
  description    = var.description
  location       = var.location
  project        = var.project
  retention_days = var.retention_days
}

