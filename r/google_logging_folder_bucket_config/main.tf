terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_logging_folder_bucket_config" "this" {
  bucket_id      = var.bucket_id
  description    = var.description
  folder         = var.folder
  location       = var.location
  retention_days = var.retention_days
}

